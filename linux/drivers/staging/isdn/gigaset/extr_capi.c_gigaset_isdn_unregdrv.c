
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int capi_driver_gigaset ;
 int unregister_capi_driver (int *) ;

void gigaset_isdn_unregdrv(void)
{
 unregister_capi_driver(&capi_driver_gigaset);
}
