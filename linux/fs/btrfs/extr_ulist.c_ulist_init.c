
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulist {scalar_t__ nnodes; int root; int nodes; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;

void ulist_init(struct ulist *ulist)
{
 INIT_LIST_HEAD(&ulist->nodes);
 ulist->root = RB_ROOT;
 ulist->nnodes = 0;
}
