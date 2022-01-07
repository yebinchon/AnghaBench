
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {int state; int ie_valid; int rc; } ;
typedef enum uwb_rsv_state { ____Placeholder_uwb_rsv_state } uwb_rsv_state ;


 int uwb_rsv_dump (char*,struct uwb_rsv*) ;
 int uwb_rsv_sched_update (int ) ;
 int uwb_rsv_stroke_timer (struct uwb_rsv*) ;

__attribute__((used)) static void uwb_rsv_state_update(struct uwb_rsv *rsv,
     enum uwb_rsv_state new_state)
{
 rsv->state = new_state;
 rsv->ie_valid = 0;

 uwb_rsv_dump("SU", rsv);

 uwb_rsv_stroke_timer(rsv);
 uwb_rsv_sched_update(rsv->rc);
}
