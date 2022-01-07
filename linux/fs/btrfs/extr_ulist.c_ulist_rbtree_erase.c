
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulist_node {int list; int rb_node; } ;
struct ulist {scalar_t__ nnodes; int root; } ;


 int BUG_ON (int) ;
 int kfree (struct ulist_node*) ;
 int list_del (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void ulist_rbtree_erase(struct ulist *ulist, struct ulist_node *node)
{
 rb_erase(&node->rb_node, &ulist->root);
 list_del(&node->list);
 kfree(node);
 BUG_ON(ulist->nnodes == 0);
 ulist->nnodes--;
}
