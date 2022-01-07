
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iov_iter {int dummy; } ;
struct ffs_epfile {int read_buffer; } ;
struct ffs_buffer {scalar_t__ data; scalar_t__ length; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EFAULT ;
 struct ffs_buffer* READ_BUFFER_DROP ;
 scalar_t__ cmpxchg (int *,int *,struct ffs_buffer*) ;
 scalar_t__ copy_to_iter (scalar_t__,scalar_t__,struct iov_iter*) ;
 int iov_iter_count (struct iov_iter*) ;
 int kfree (struct ffs_buffer*) ;
 scalar_t__ unlikely (int ) ;
 struct ffs_buffer* xchg (int *,int *) ;

__attribute__((used)) static ssize_t __ffs_epfile_read_buffered(struct ffs_epfile *epfile,
       struct iov_iter *iter)
{





 struct ffs_buffer *buf = xchg(&epfile->read_buffer, ((void*)0));
 ssize_t ret;
 if (!buf || buf == READ_BUFFER_DROP)
  return 0;

 ret = copy_to_iter(buf->data, buf->length, iter);
 if (buf->length == ret) {
  kfree(buf);
  return ret;
 }

 if (unlikely(iov_iter_count(iter))) {
  ret = -EFAULT;
 } else {
  buf->length -= ret;
  buf->data += ret;
 }

 if (cmpxchg(&epfile->read_buffer, ((void*)0), buf))
  kfree(buf);

 return ret;
}
