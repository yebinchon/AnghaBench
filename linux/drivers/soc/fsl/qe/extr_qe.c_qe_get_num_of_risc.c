
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct device_node {int dummy; } ;


 unsigned int* of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* qe_get_device_node () ;

unsigned int qe_get_num_of_risc(void)
{
 struct device_node *qe;
 int size;
 unsigned int num_of_risc = 0;
 const u32 *prop;

 qe = qe_get_device_node();
 if (!qe)
  return num_of_risc;

 prop = of_get_property(qe, "fsl,qe-num-riscs", &size);
 if (prop && size == sizeof(*prop))
  num_of_risc = *prop;

 of_node_put(qe);

 return num_of_risc;
}
