
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct anybuss_client_driver {scalar_t__ anybus_id; } ;
struct anybuss_client {int anybus_id; } ;


 scalar_t__ be16_to_cpu (int ) ;
 struct anybuss_client* to_anybuss_client (struct device*) ;
 struct anybuss_client_driver* to_anybuss_client_driver (struct device_driver*) ;

__attribute__((used)) static int anybus_bus_match(struct device *dev,
       struct device_driver *drv)
{
 struct anybuss_client_driver *adrv =
  to_anybuss_client_driver(drv);
 struct anybuss_client *adev =
  to_anybuss_client(dev);

 return adrv->anybus_id == be16_to_cpu(adev->anybus_id);
}
