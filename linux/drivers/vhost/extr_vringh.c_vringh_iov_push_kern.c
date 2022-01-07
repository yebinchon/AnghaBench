
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vringh_kiov {int dummy; } ;
typedef int ssize_t ;


 int kern_xfer ;
 int vringh_iov_xfer (struct vringh_kiov*,void*,size_t,int ) ;

ssize_t vringh_iov_push_kern(struct vringh_kiov *wiov,
        const void *src, size_t len)
{
 return vringh_iov_xfer(wiov, (void *)src, len, kern_xfer);
}
