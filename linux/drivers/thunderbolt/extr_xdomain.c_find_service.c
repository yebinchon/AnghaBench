
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_service {int key; } ;
struct tb_property {int key; } ;
struct device {int dummy; } ;


 int strcmp (int ,int ) ;
 struct tb_service* tb_to_service (struct device*) ;

__attribute__((used)) static int find_service(struct device *dev, void *data)
{
 const struct tb_property *p = data;
 struct tb_service *svc;

 svc = tb_to_service(dev);
 if (!svc)
  return 0;

 return !strcmp(svc->key, p->key);
}
