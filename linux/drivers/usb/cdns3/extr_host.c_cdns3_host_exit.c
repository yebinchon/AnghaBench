
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3 {int * host_dev; } ;


 int cdns3_drd_switch_host (struct cdns3*,int ) ;
 int platform_device_unregister (int *) ;

__attribute__((used)) static void cdns3_host_exit(struct cdns3 *cdns)
{
 platform_device_unregister(cdns->host_dev);
 cdns->host_dev = ((void*)0);
 cdns3_drd_switch_host(cdns, 0);
}
