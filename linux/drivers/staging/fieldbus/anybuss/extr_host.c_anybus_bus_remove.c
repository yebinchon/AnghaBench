
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int driver; } ;
struct anybuss_client_driver {int (* remove ) (int ) ;} ;


 int stub1 (int ) ;
 int to_anybuss_client (struct device*) ;
 struct anybuss_client_driver* to_anybuss_client_driver (int ) ;

__attribute__((used)) static int anybus_bus_remove(struct device *dev)
{
 struct anybuss_client_driver *adrv =
  to_anybuss_client_driver(dev->driver);

 if (adrv->remove)
  return adrv->remove(to_anybuss_client(dev));
 return 0;
}
