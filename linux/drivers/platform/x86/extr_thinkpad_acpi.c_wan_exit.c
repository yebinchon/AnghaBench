
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int TPACPI_RFK_WWAN_SW_ID ;
 int sysfs_remove_group (int *,int *) ;
 int tpacpi_destroy_rfkill (int ) ;
 TYPE_2__* tpacpi_pdev ;
 int wan_attr_group ;
 int wan_shutdown () ;

__attribute__((used)) static void wan_exit(void)
{
 sysfs_remove_group(&tpacpi_pdev->dev.kobj,
  &wan_attr_group);

 tpacpi_destroy_rfkill(TPACPI_RFK_WWAN_SW_ID);

 wan_shutdown();
}
