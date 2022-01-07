
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vringh_kiov {int dummy; } ;
struct vringh_iov {int dummy; } ;
typedef int ssize_t ;


 int vringh_iov_xfer (struct vringh_kiov*,void*,size_t,int ) ;
 int xfer_to_user ;

ssize_t vringh_iov_push_user(struct vringh_iov *wiov,
        const void *src, size_t len)
{
 return vringh_iov_xfer((struct vringh_kiov *)wiov,
          (void *)src, len, xfer_to_user);
}
