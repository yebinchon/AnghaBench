
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_mbm {int cbfn_q; int req_q; int timer; struct csio_hw* hw; } ;
struct csio_hw {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int csio_set_mb_intr_idx (struct csio_mbm*,int) ;
 int timer_setup (int *,void (*) (struct timer_list*),int ) ;

int
csio_mbm_init(struct csio_mbm *mbm, struct csio_hw *hw,
       void (*timer_fn)(struct timer_list *))
{
 mbm->hw = hw;
 timer_setup(&mbm->timer, timer_fn, 0);

 INIT_LIST_HEAD(&mbm->req_q);
 INIT_LIST_HEAD(&mbm->cbfn_q);
 csio_set_mb_intr_idx(mbm, -1);

 return 0;
}
