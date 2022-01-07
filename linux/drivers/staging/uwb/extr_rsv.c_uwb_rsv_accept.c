
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uwb_rsv_cb_f ;
struct uwb_rsv {int state; void* pal_priv; int callback; } ;


 int UWB_RSV_STATE_T_ACCEPTED ;
 int uwb_rsv_get (struct uwb_rsv*) ;

void uwb_rsv_accept(struct uwb_rsv *rsv, uwb_rsv_cb_f cb, void *pal_priv)
{
 uwb_rsv_get(rsv);

 rsv->callback = cb;
 rsv->pal_priv = pal_priv;
 rsv->state = UWB_RSV_STATE_T_ACCEPTED;
}
