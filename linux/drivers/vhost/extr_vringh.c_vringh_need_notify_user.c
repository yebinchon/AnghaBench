
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vringh {int dummy; } ;


 int __vringh_need_notify (struct vringh*,int ) ;
 int getu16_user ;

int vringh_need_notify_user(struct vringh *vrh)
{
 return __vringh_need_notify(vrh, getu16_user);
}
