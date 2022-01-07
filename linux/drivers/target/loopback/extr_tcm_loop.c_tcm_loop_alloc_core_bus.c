
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int bus_register (int *) ;
 int bus_unregister (int *) ;
 int driver_register (int *) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int root_device_register (char*) ;
 int root_device_unregister (int ) ;
 int tcm_loop_driverfs ;
 int tcm_loop_lld_bus ;
 int tcm_loop_primary ;

__attribute__((used)) static int tcm_loop_alloc_core_bus(void)
{
 int ret;

 tcm_loop_primary = root_device_register("tcm_loop_0");
 if (IS_ERR(tcm_loop_primary)) {
  pr_err("Unable to allocate tcm_loop_primary\n");
  return PTR_ERR(tcm_loop_primary);
 }

 ret = bus_register(&tcm_loop_lld_bus);
 if (ret) {
  pr_err("bus_register() failed for tcm_loop_lld_bus\n");
  goto dev_unreg;
 }

 ret = driver_register(&tcm_loop_driverfs);
 if (ret) {
  pr_err("driver_register() failed for tcm_loop_driverfs\n");
  goto bus_unreg;
 }

 pr_debug("Initialized TCM Loop Core Bus\n");
 return ret;

bus_unreg:
 bus_unregister(&tcm_loop_lld_bus);
dev_unreg:
 root_device_unregister(tcm_loop_primary);
 return ret;
}
