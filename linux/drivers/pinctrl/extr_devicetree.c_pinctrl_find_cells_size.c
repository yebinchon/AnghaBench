
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {TYPE_1__* parent; } ;
struct TYPE_2__ {struct TYPE_2__* parent; } ;


 int ENOENT ;
 int of_property_read_u32 (TYPE_1__*,char const*,int*) ;

__attribute__((used)) static int pinctrl_find_cells_size(const struct device_node *np)
{
 const char *cells_name = "#pinctrl-cells";
 int cells_size, error;

 error = of_property_read_u32(np->parent, cells_name, &cells_size);
 if (error) {
  error = of_property_read_u32(np->parent->parent,
          cells_name, &cells_size);
  if (error)
   return -ENOENT;
 }

 return cells_size;
}
