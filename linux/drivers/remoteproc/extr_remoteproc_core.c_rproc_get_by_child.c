
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dummy; } ;
struct device {struct rproc* driver_data; int * type; struct device* parent; } ;


 int rproc_type ;

struct rproc *rproc_get_by_child(struct device *dev)
{
 for (dev = dev->parent; dev; dev = dev->parent) {
  if (dev->type == &rproc_type)
   return dev->driver_data;
 }

 return ((void*)0);
}
