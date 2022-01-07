
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct olpc_ec_driver {int dummy; } ;


 void* ec_cb_arg ;
 struct olpc_ec_driver* ec_driver ;

void olpc_ec_driver_register(struct olpc_ec_driver *drv, void *arg)
{
 ec_driver = drv;
 ec_cb_arg = arg;
}
