
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vringh_kiov {int dummy; } ;
typedef int ssize_t ;


 int vringh_iov_xfer (struct vringh_kiov*,void*,size_t,int ) ;
 int xfer_kern ;

ssize_t vringh_iov_pull_kern(struct vringh_kiov *riov, void *dst, size_t len)
{
 return vringh_iov_xfer(riov, dst, len, xfer_kern);
}
