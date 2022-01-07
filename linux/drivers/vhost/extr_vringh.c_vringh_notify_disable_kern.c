
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vringh {int dummy; } ;


 int __vringh_notify_disable (struct vringh*,int ) ;
 int putu16_kern ;

void vringh_notify_disable_kern(struct vringh *vrh)
{
 __vringh_notify_disable(vrh, putu16_kern);
}
