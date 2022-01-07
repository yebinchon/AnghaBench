
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_xdomain {int properties; } ;
struct tb_service {int key; } ;
struct device {int dummy; } ;


 int TB_PROPERTY_TYPE_DIRECTORY ;
 int device_unregister (struct device*) ;
 int tb_property_find (int ,int ,int ) ;
 struct tb_service* tb_to_service (struct device*) ;

__attribute__((used)) static int remove_missing_service(struct device *dev, void *data)
{
 struct tb_xdomain *xd = data;
 struct tb_service *svc;

 svc = tb_to_service(dev);
 if (!svc)
  return 0;

 if (!tb_property_find(xd->properties, svc->key,
         TB_PROPERTY_TYPE_DIRECTORY))
  device_unregister(dev);

 return 0;
}
