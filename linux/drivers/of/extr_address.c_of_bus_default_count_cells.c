
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_n_addr_cells (struct device_node*) ;
 int of_n_size_cells (struct device_node*) ;

__attribute__((used)) static void of_bus_default_count_cells(struct device_node *dev,
           int *addrc, int *sizec)
{
 if (addrc)
  *addrc = of_n_addr_cells(dev);
 if (sizec)
  *sizec = of_n_size_cells(dev);
}
