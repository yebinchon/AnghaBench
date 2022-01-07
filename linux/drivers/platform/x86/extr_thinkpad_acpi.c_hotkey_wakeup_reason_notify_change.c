
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int sysfs_notify (int *,int *,char*) ;
 TYPE_2__* tpacpi_pdev ;

__attribute__((used)) static void hotkey_wakeup_reason_notify_change(void)
{
 sysfs_notify(&tpacpi_pdev->dev.kobj, ((void*)0),
       "wakeup_reason");
}
