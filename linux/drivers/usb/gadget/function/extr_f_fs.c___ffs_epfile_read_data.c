
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iov_iter {int dummy; } ;
struct ffs_epfile {int read_buffer; } ;
struct ffs_buffer {int length; int storage; int data; } ;
typedef int ssize_t ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cmpxchg (int *,int *,struct ffs_buffer*) ;
 int copy_to_iter (void*,int,struct iov_iter*) ;
 int iov_iter_count (struct iov_iter*) ;
 int kfree (struct ffs_buffer*) ;
 struct ffs_buffer* kmalloc (int,int ) ;
 scalar_t__ likely (int) ;
 int memcpy (int ,void*,int) ;
 int pr_warn (char*,int,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static ssize_t __ffs_epfile_read_data(struct ffs_epfile *epfile,
          void *data, int data_len,
          struct iov_iter *iter)
{
 struct ffs_buffer *buf;

 ssize_t ret = copy_to_iter(data, data_len, iter);
 if (likely(data_len == ret))
  return ret;

 if (unlikely(iov_iter_count(iter)))
  return -EFAULT;


 pr_warn("functionfs read size %d > requested size %zd, splitting request into multiple reads.",
  data_len, ret);

 data_len -= ret;
 buf = kmalloc(sizeof(*buf) + data_len, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;
 buf->length = data_len;
 buf->data = buf->storage;
 memcpy(buf->storage, data + ret, data_len);







 if (unlikely(cmpxchg(&epfile->read_buffer, ((void*)0), buf)))
  kfree(buf);

 return ret;
}
