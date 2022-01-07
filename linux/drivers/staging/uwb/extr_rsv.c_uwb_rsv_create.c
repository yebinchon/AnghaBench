
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uwb_rsv_cb_f ;
struct uwb_rsv {void* pal_priv; int callback; } ;
struct uwb_rc {int dummy; } ;


 struct uwb_rsv* uwb_rsv_alloc (struct uwb_rc*) ;

struct uwb_rsv *uwb_rsv_create(struct uwb_rc *rc, uwb_rsv_cb_f cb, void *pal_priv)
{
 struct uwb_rsv *rsv;

 rsv = uwb_rsv_alloc(rc);
 if (!rsv)
  return ((void*)0);

 rsv->callback = cb;
 rsv->pal_priv = pal_priv;

 return rsv;
}
