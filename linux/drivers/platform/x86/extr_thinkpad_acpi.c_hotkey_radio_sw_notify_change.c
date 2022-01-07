
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ hotkey_wlsw; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int sysfs_notify (int *,int *,char*) ;
 TYPE_3__ tp_features ;
 TYPE_2__* tpacpi_pdev ;

__attribute__((used)) static void hotkey_radio_sw_notify_change(void)
{
 if (tp_features.hotkey_wlsw)
  sysfs_notify(&tpacpi_pdev->dev.kobj, ((void*)0),
        "hotkey_radio_sw");
}
