
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int device_remove_file (int *,int *) ;
 int kfree (int *) ;
 int * sc_handle ;

__attribute__((used)) static void sony_nc_smart_conn_cleanup(struct platform_device *pd)
{
 if (sc_handle) {
  device_remove_file(&pd->dev, sc_handle);
  kfree(sc_handle);
  sc_handle = ((void*)0);
 }
}
