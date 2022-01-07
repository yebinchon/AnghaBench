
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qtnf_sta_list {int size; } ;
struct qtnf_vif {int generation; struct qtnf_sta_list sta_list; } ;
struct qtnf_sta_node {int list; } ;


 int atomic_dec (int *) ;
 int kfree (struct qtnf_sta_node*) ;
 int list_del (int *) ;
 struct qtnf_sta_node* qtnf_sta_list_lookup (struct qtnf_sta_list*,int const*) ;

bool qtnf_sta_list_del(struct qtnf_vif *vif, const u8 *mac)
{
 struct qtnf_sta_list *list = &vif->sta_list;
 struct qtnf_sta_node *node;
 bool ret = 0;

 node = qtnf_sta_list_lookup(list, mac);

 if (node) {
  list_del(&node->list);
  atomic_dec(&list->size);
  kfree(node);
  ++vif->generation;
  ret = 1;
 }

 return ret;
}
