
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whc_qset {int remove_complete; int list_node; scalar_t__ remove; } ;
struct whc {int dummy; } ;


 int complete (int *) ;
 int list_del_init (int *) ;

void qset_remove_complete(struct whc *whc, struct whc_qset *qset)
{
 qset->remove = 0;
 list_del_init(&qset->list_node);
 complete(&qset->remove_complete);
}
