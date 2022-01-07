
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int name; } ;
struct pnp_resource {struct resource res; } ;
struct pnp_dev {int dev; int name; } ;


 int dev_dbg (int *,char*,struct resource*) ;
 int dev_err (int *,char*,struct resource*) ;
 struct pnp_resource* pnp_new_resource (struct pnp_dev*) ;

struct pnp_resource *pnp_add_resource(struct pnp_dev *dev,
          struct resource *res)
{
 struct pnp_resource *pnp_res;

 pnp_res = pnp_new_resource(dev);
 if (!pnp_res) {
  dev_err(&dev->dev, "can't add resource %pR\n", res);
  return ((void*)0);
 }

 pnp_res->res = *res;
 pnp_res->res.name = dev->name;
 dev_dbg(&dev->dev, "%pR\n", res);
 return pnp_res;
}
