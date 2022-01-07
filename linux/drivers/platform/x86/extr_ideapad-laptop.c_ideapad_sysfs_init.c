
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ideapad_private {TYPE_2__* platform_device; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int ideapad_attribute_group ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int ideapad_sysfs_init(struct ideapad_private *priv)
{
 return sysfs_create_group(&priv->platform_device->dev.kobj,
        &ideapad_attribute_group);
}
