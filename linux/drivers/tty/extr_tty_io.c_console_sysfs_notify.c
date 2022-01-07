
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;


 TYPE_1__* consdev ;
 int sysfs_notify (int *,int *,char*) ;

void console_sysfs_notify(void)
{
 if (consdev)
  sysfs_notify(&consdev->kobj, ((void*)0), "active");
}
