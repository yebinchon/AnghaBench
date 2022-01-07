
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whc_qset {int in_sw_list; int list_node; } ;
struct whc {int * periodic_list; } ;


 int list_move (int *,int *) ;
 int qset_clear (struct whc*,struct whc_qset*) ;
 int qset_get_period (struct whc*,struct whc_qset*) ;

__attribute__((used)) static void qset_insert_in_sw_list(struct whc *whc, struct whc_qset *qset)
{
 int period;

 period = qset_get_period(whc, qset);

 qset_clear(whc, qset);
 list_move(&qset->list_node, &whc->periodic_list[period]);
 qset->in_sw_list = 1;
}
