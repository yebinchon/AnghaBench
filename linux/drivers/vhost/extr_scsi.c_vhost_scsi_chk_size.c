
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int dummy; } ;
struct vhost_scsi_ctx {scalar_t__ in_size; scalar_t__ rsp_size; scalar_t__ out_size; scalar_t__ req_size; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ unlikely (int) ;
 int vq_err (struct vhost_virtqueue*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
vhost_scsi_chk_size(struct vhost_virtqueue *vq, struct vhost_scsi_ctx *vc)
{
 if (unlikely(vc->in_size < vc->rsp_size)) {
  vq_err(vq,
         "Response buf too small, need min %zu bytes got %zu",
         vc->rsp_size, vc->in_size);
  return -EINVAL;
 } else if (unlikely(vc->out_size < vc->req_size)) {
  vq_err(vq,
         "Request buf too small, need min %zu bytes got %zu",
         vc->req_size, vc->out_size);
  return -EIO;
 }

 return 0;
}
