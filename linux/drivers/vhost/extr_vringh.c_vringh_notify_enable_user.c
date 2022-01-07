
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vringh {int dummy; } ;


 int __vringh_notify_enable (struct vringh*,int ,int ) ;
 int getu16_user ;
 int putu16_user ;

bool vringh_notify_enable_user(struct vringh *vrh)
{
 return __vringh_notify_enable(vrh, getu16_user, putu16_user);
}
