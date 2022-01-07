
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct ulist_node {int list; void* aux; void* val; } ;
struct ulist {int nnodes; int nodes; } ;
typedef int gfp_t ;


 int ASSERT (int) ;
 int ENOMEM ;
 struct ulist_node* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int ulist_rbtree_insert (struct ulist*,struct ulist_node*) ;
 struct ulist_node* ulist_rbtree_search (struct ulist*,void*) ;

int ulist_add_merge(struct ulist *ulist, u64 val, u64 aux,
      u64 *old_aux, gfp_t gfp_mask)
{
 int ret;
 struct ulist_node *node;

 node = ulist_rbtree_search(ulist, val);
 if (node) {
  if (old_aux)
   *old_aux = node->aux;
  return 0;
 }
 node = kmalloc(sizeof(*node), gfp_mask);
 if (!node)
  return -ENOMEM;

 node->val = val;
 node->aux = aux;

 ret = ulist_rbtree_insert(ulist, node);
 ASSERT(!ret);
 list_add_tail(&node->list, &ulist->nodes);
 ulist->nnodes++;

 return 1;
}
