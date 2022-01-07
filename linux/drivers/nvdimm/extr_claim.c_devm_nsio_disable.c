
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct nd_namespace_io {int bb; int addr; struct resource res; } ;
struct device {int dummy; } ;


 int devm_exit_badblocks (struct device*,int *) ;
 int devm_memunmap (struct device*,int ) ;
 int devm_release_mem_region (struct device*,int ,int ) ;
 int resource_size (struct resource*) ;

void devm_nsio_disable(struct device *dev, struct nd_namespace_io *nsio)
{
 struct resource *res = &nsio->res;

 devm_memunmap(dev, nsio->addr);
 devm_exit_badblocks(dev, &nsio->bb);
 devm_release_mem_region(dev, res->start, resource_size(res));
}
