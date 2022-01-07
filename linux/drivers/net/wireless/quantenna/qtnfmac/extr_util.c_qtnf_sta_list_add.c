
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qtnf_sta_list {int size; int head; } ;
struct qtnf_vif {int generation; struct qtnf_sta_list sta_list; } ;
struct qtnf_sta_node {int list; int mac_addr; } ;


 int GFP_KERNEL ;
 int atomic_inc (int *) ;
 int ether_addr_copy (int ,int const*) ;
 struct qtnf_sta_node* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct qtnf_sta_node* qtnf_sta_list_lookup (struct qtnf_sta_list*,int const*) ;
 scalar_t__ unlikely (int) ;

struct qtnf_sta_node *qtnf_sta_list_add(struct qtnf_vif *vif,
     const u8 *mac)
{
 struct qtnf_sta_list *list = &vif->sta_list;
 struct qtnf_sta_node *node;

 if (unlikely(!mac))
  return ((void*)0);

 node = qtnf_sta_list_lookup(list, mac);

 if (node)
  goto done;

 node = kzalloc(sizeof(*node), GFP_KERNEL);
 if (unlikely(!node))
  goto done;

 ether_addr_copy(node->mac_addr, mac);
 list_add_tail(&node->list, &list->head);
 atomic_inc(&list->size);
 ++vif->generation;

done:
 return node;
}
