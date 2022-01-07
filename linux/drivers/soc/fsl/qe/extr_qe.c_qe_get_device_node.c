
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 struct device_node* of_find_node_by_type (int *,char*) ;

__attribute__((used)) static struct device_node *qe_get_device_node(void)
{
 struct device_node *qe;





 qe = of_find_compatible_node(((void*)0), ((void*)0), "fsl,qe");
 if (qe)
  return qe;
 return of_find_node_by_type(((void*)0), "qe");
}
