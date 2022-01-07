
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ci_hdrc {TYPE_1__* dev; } ;
struct TYPE_2__ {int kobj; } ;


 int inputs_attr_group ;
 int sysfs_remove_group (int *,int *) ;

void ci_hdrc_otg_fsm_remove(struct ci_hdrc *ci)
{
 sysfs_remove_group(&ci->dev->kobj, &inputs_attr_group);
}
