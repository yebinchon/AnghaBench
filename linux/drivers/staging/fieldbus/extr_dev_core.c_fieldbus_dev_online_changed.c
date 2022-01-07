
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fieldbus_dev {int online; TYPE_1__* dev; } ;
struct TYPE_2__ {int kobj; } ;


 int KOBJ_CHANGE ;
 int kobject_uevent (int *,int ) ;

void fieldbus_dev_online_changed(struct fieldbus_dev *fb, bool online)
{
 fb->online = online;
 kobject_uevent(&fb->dev->kobj, KOBJ_CHANGE);
}
