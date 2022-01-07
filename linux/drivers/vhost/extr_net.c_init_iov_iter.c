
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int iov; } ;
struct iov_iter {int dummy; } ;


 int WRITE ;
 int iov_iter_advance (struct iov_iter*,size_t) ;
 size_t iov_iter_count (struct iov_iter*) ;
 int iov_iter_init (struct iov_iter*,int ,int ,int,size_t) ;
 size_t iov_length (int ,int) ;

__attribute__((used)) static size_t init_iov_iter(struct vhost_virtqueue *vq, struct iov_iter *iter,
       size_t hdr_size, int out)
{

 size_t len = iov_length(vq->iov, out);

 iov_iter_init(iter, WRITE, vq->iov, out, len);
 iov_iter_advance(iter, hdr_size);

 return iov_iter_count(iter);
}
