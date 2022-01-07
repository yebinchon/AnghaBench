
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vring_desc {unsigned int len; unsigned int flags; int addr; } ;
struct vhost_virtqueue {struct iovec* indirect; } ;
struct vhost_log {int len; scalar_t__ addr; } ;
struct iovec {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef int desc ;


 int E2BIG ;
 int EAGAIN ;
 int EINVAL ;
 int READ ;
 unsigned int UIO_MAXIOV ;
 int USHRT_MAX ;
 int VHOST_ACCESS_RO ;
 int VHOST_ACCESS_WO ;
 int VRING_DESC_F_INDIRECT ;
 int VRING_DESC_F_WRITE ;
 int copy_from_iter_full (struct vring_desc*,int,struct iov_iter*) ;
 int cpu_to_vhost16 (struct vhost_virtqueue*,int ) ;
 int iov_iter_init (struct iov_iter*,int ,struct iovec*,int,int) ;
 unsigned int next_desc (struct vhost_virtqueue*,struct vring_desc*) ;
 int read_barrier_depends () ;
 int translate_desc (struct vhost_virtqueue*,scalar_t__,int,struct iovec*,unsigned int,int) ;
 scalar_t__ unlikely (unsigned int) ;
 int vhost32_to_cpu (struct vhost_virtqueue*,unsigned int) ;
 scalar_t__ vhost64_to_cpu (struct vhost_virtqueue*,int ) ;
 int vq_err (struct vhost_virtqueue*,char*,unsigned int,...) ;

__attribute__((used)) static int get_indirect(struct vhost_virtqueue *vq,
   struct iovec iov[], unsigned int iov_size,
   unsigned int *out_num, unsigned int *in_num,
   struct vhost_log *log, unsigned int *log_num,
   struct vring_desc *indirect)
{
 struct vring_desc desc;
 unsigned int i = 0, count, found = 0;
 u32 len = vhost32_to_cpu(vq, indirect->len);
 struct iov_iter from;
 int ret, access;


 if (unlikely(len % sizeof desc)) {
  vq_err(vq, "Invalid length in indirect descriptor: "
         "len 0x%llx not multiple of 0x%zx\n",
         (unsigned long long)len,
         sizeof desc);
  return -EINVAL;
 }

 ret = translate_desc(vq, vhost64_to_cpu(vq, indirect->addr), len, vq->indirect,
        UIO_MAXIOV, VHOST_ACCESS_RO);
 if (unlikely(ret < 0)) {
  if (ret != -EAGAIN)
   vq_err(vq, "Translation failure %d in indirect.\n", ret);
  return ret;
 }
 iov_iter_init(&from, READ, vq->indirect, ret, len);



 read_barrier_depends();

 count = len / sizeof desc;


 if (unlikely(count > USHRT_MAX + 1)) {
  vq_err(vq, "Indirect buffer length too big: %d\n",
         indirect->len);
  return -E2BIG;
 }

 do {
  unsigned iov_count = *in_num + *out_num;
  if (unlikely(++found > count)) {
   vq_err(vq, "Loop detected: last one at %u "
          "indirect size %u\n",
          i, count);
   return -EINVAL;
  }
  if (unlikely(!copy_from_iter_full(&desc, sizeof(desc), &from))) {
   vq_err(vq, "Failed indirect descriptor: idx %d, %zx\n",
          i, (size_t)vhost64_to_cpu(vq, indirect->addr) + i * sizeof desc);
   return -EINVAL;
  }
  if (unlikely(desc.flags & cpu_to_vhost16(vq, VRING_DESC_F_INDIRECT))) {
   vq_err(vq, "Nested indirect descriptor: idx %d, %zx\n",
          i, (size_t)vhost64_to_cpu(vq, indirect->addr) + i * sizeof desc);
   return -EINVAL;
  }

  if (desc.flags & cpu_to_vhost16(vq, VRING_DESC_F_WRITE))
   access = VHOST_ACCESS_WO;
  else
   access = VHOST_ACCESS_RO;

  ret = translate_desc(vq, vhost64_to_cpu(vq, desc.addr),
         vhost32_to_cpu(vq, desc.len), iov + iov_count,
         iov_size - iov_count, access);
  if (unlikely(ret < 0)) {
   if (ret != -EAGAIN)
    vq_err(vq, "Translation failure %d indirect idx %d\n",
     ret, i);
   return ret;
  }

  if (access == VHOST_ACCESS_WO) {
   *in_num += ret;
   if (unlikely(log && ret)) {
    log[*log_num].addr = vhost64_to_cpu(vq, desc.addr);
    log[*log_num].len = vhost32_to_cpu(vq, desc.len);
    ++*log_num;
   }
  } else {


   if (unlikely(*in_num)) {
    vq_err(vq, "Indirect descriptor "
           "has out after in: idx %d\n", i);
    return -EINVAL;
   }
   *out_num += ret;
  }
 } while ((i = next_desc(vq, &desc)) != -1);
 return 0;
}
