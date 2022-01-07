
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct uwb_rc {TYPE_2__ uwb_dev; } ;


 int rc_attr_group ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void __uwb_rc_sys_rm(struct uwb_rc *rc)
{
 sysfs_remove_group(&rc->uwb_dev.dev.kobj, &rc_attr_group);
}
