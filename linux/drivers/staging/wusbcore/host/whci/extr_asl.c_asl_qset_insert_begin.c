
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whc_qset {int in_sw_list; int list_node; } ;
struct whc {int async_list; } ;


 int list_move (int *,int *) ;

__attribute__((used)) static void asl_qset_insert_begin(struct whc *whc, struct whc_qset *qset)
{
 list_move(&qset->list_node, &whc->async_list);
 qset->in_sw_list = 1;
}
