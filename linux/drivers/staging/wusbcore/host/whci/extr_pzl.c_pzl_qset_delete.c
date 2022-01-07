
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whc_qset {int remove; } ;
struct whc {int periodic_work; int workqueue; } ;


 int qset_delete (struct whc*,struct whc_qset*) ;
 int queue_work (int ,int *) ;

void pzl_qset_delete(struct whc *whc, struct whc_qset *qset)
{
 qset->remove = 1;
 queue_work(whc->workqueue, &whc->periodic_work);
 qset_delete(whc, qset);
}
