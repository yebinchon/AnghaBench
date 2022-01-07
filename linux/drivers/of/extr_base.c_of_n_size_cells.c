
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {struct device_node* parent; } ;


 int OF_ROOT_NODE_SIZE_CELLS_DEFAULT ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

int of_n_size_cells(struct device_node *np)
{
 u32 cells;

 do {
  if (np->parent)
   np = np->parent;
  if (!of_property_read_u32(np, "#size-cells", &cells))
   return cells;
 } while (np->parent);

 return OF_ROOT_NODE_SIZE_CELLS_DEFAULT;
}
