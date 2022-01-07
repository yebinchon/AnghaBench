
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct device_node* of_node; struct device* parent; } ;
struct ulpi {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct device {TYPE_1__* parent; scalar_t__ of_node; } ;
struct TYPE_3__ {scalar_t__ of_node; } ;


 int EINVAL ;
 struct device_node* of_get_child_by_name (scalar_t__,char*) ;
 struct device_node* of_get_next_available_child (struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int ulpi_of_register(struct ulpi *ulpi)
{
 struct device_node *np = ((void*)0), *child;
 struct device *parent;


 parent = ulpi->dev.parent;
 if (parent->of_node)
  np = of_get_child_by_name(parent->of_node, "ulpi");
 else if (parent->parent && parent->parent->of_node)
  np = of_get_child_by_name(parent->parent->of_node, "ulpi");
 if (!np)
  return 0;

 child = of_get_next_available_child(np, ((void*)0));
 of_node_put(np);
 if (!child)
  return -EINVAL;

 ulpi->dev.of_node = child;

 return 0;
}
