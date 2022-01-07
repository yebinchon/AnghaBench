
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device_node {int dummy; } ;
typedef int phys_addr_t ;


 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* qe_get_device_node () ;
 int qebase ;

__attribute__((used)) static phys_addr_t get_qe_base(void)
{
 struct device_node *qe;
 int ret;
 struct resource res;

 if (qebase != -1)
  return qebase;

 qe = qe_get_device_node();
 if (!qe)
  return qebase;

 ret = of_address_to_resource(qe, 0, &res);
 if (!ret)
  qebase = res.start;
 of_node_put(qe);

 return qebase;
}
