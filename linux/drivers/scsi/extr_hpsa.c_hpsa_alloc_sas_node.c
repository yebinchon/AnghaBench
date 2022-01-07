
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_sas_node {int port_list_head; struct device* parent_dev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct hpsa_sas_node* kzalloc (int,int ) ;

__attribute__((used)) static struct hpsa_sas_node *hpsa_alloc_sas_node(struct device *parent_dev)
{
 struct hpsa_sas_node *hpsa_sas_node;

 hpsa_sas_node = kzalloc(sizeof(*hpsa_sas_node), GFP_KERNEL);
 if (hpsa_sas_node) {
  hpsa_sas_node->parent_dev = parent_dev;
  INIT_LIST_HEAD(&hpsa_sas_node->port_list_head);
 }

 return hpsa_sas_node;
}
