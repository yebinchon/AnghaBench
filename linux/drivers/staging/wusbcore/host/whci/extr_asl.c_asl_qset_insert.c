
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link; } ;
struct whc_qset {int in_hw_list; int qset_dma; TYPE_1__ qh; } ;
struct whc {int dummy; } ;


 int qset_clear (struct whc*,struct whc_qset*) ;
 int qset_get_next_prev (struct whc*,struct whc_qset*,struct whc_qset**,struct whc_qset**) ;
 int whc_qset_set_link_ptr (int *,int ) ;

__attribute__((used)) static void asl_qset_insert(struct whc *whc, struct whc_qset *qset)
{
 struct whc_qset *next, *prev;

 qset_clear(whc, qset);


 qset_get_next_prev(whc, qset, &next, &prev);
 whc_qset_set_link_ptr(&qset->qh.link, next->qset_dma);
 whc_qset_set_link_ptr(&prev->qh.link, qset->qset_dma);
 qset->in_hw_list = 1;
}
