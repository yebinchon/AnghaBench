
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int capi_driver_gigaset ;
 int pr_info (char*) ;
 int register_capi_driver (int *) ;

void gigaset_isdn_regdrv(void)
{
 pr_info("Kernel CAPI interface\n");
 register_capi_driver(&capi_driver_gigaset);
}
