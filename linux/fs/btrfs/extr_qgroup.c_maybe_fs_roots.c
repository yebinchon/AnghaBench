
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulist_node {int val; } ;
struct ulist_iterator {int dummy; } ;
struct ulist {scalar_t__ nnodes; } ;


 int ULIST_ITER_INIT (struct ulist_iterator*) ;
 int is_fstree (int ) ;
 struct ulist_node* ulist_next (struct ulist*,struct ulist_iterator*) ;

__attribute__((used)) static int maybe_fs_roots(struct ulist *roots)
{
 struct ulist_node *unode;
 struct ulist_iterator uiter;


 if (!roots || roots->nnodes == 0)
  return 1;

 ULIST_ITER_INIT(&uiter);
 unode = ulist_next(roots, &uiter);
 if (!unode)
  return 1;






 return is_fstree(unode->val);
}
