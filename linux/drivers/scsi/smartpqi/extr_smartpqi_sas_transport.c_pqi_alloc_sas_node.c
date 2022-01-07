
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_sas_node {int port_list_head; struct device* parent_dev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct pqi_sas_node* kzalloc (int,int ) ;

__attribute__((used)) static struct pqi_sas_node *pqi_alloc_sas_node(struct device *parent_dev)
{
 struct pqi_sas_node *pqi_sas_node;

 pqi_sas_node = kzalloc(sizeof(*pqi_sas_node), GFP_KERNEL);
 if (pqi_sas_node) {
  pqi_sas_node->parent_dev = parent_dev;
  INIT_LIST_HEAD(&pqi_sas_node->port_list_head);
 }

 return pqi_sas_node;
}
