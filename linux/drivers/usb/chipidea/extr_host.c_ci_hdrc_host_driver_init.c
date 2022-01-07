
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hub_control; int bus_suspend; } ;


 int ci_ehci_bus_suspend ;
 TYPE_1__ ci_ehci_hc_driver ;
 int ci_ehci_hub_control ;
 int ehci_ci_overrides ;
 int ehci_init_driver (TYPE_1__*,int *) ;
 int orig_bus_suspend ;

void ci_hdrc_host_driver_init(void)
{
 ehci_init_driver(&ci_ehci_hc_driver, &ehci_ci_overrides);
 orig_bus_suspend = ci_ehci_hc_driver.bus_suspend;
 ci_ehci_hc_driver.bus_suspend = ci_ehci_bus_suspend;
 ci_ehci_hc_driver.hub_control = ci_ehci_hub_control;
}
