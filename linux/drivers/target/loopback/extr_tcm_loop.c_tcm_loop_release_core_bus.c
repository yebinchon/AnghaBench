
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_unregister (int *) ;
 int driver_unregister (int *) ;
 int pr_debug (char*) ;
 int root_device_unregister (int ) ;
 int tcm_loop_driverfs ;
 int tcm_loop_lld_bus ;
 int tcm_loop_primary ;

__attribute__((used)) static void tcm_loop_release_core_bus(void)
{
 driver_unregister(&tcm_loop_driverfs);
 bus_unregister(&tcm_loop_lld_bus);
 root_device_unregister(tcm_loop_primary);

 pr_debug("Releasing TCM Loop Core BUS\n");
}
