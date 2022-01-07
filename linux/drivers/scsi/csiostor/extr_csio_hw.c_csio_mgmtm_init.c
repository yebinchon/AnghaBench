
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_mgmtm {struct csio_hw* hw; int cbfn_q; int active_q; int mgmt_timer; } ;
struct csio_hw {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int csio_mgmt_tmo_handler ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int
csio_mgmtm_init(struct csio_mgmtm *mgmtm, struct csio_hw *hw)
{
 timer_setup(&mgmtm->mgmt_timer, csio_mgmt_tmo_handler, 0);

 INIT_LIST_HEAD(&mgmtm->active_q);
 INIT_LIST_HEAD(&mgmtm->cbfn_q);

 mgmtm->hw = hw;


 return 0;
}
