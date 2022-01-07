
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mctrl_word; } ;
struct hvsi_query_response {int verb; TYPE_1__ u; } ;
struct hvsi_priv {int mctrl_update; scalar_t__ inbuf; } ;


 int HVSI_TSCD ;

 int be32_to_cpu (int ) ;
 int hvsi_cd_change (struct hvsi_priv*,int) ;

__attribute__((used)) static void hvsi_got_response(struct hvsi_priv *pv)
{
 struct hvsi_query_response *r =
  (struct hvsi_query_response *)pv->inbuf;

 switch(r->verb) {
 case 128:
  hvsi_cd_change(pv, be32_to_cpu(r->u.mctrl_word) & HVSI_TSCD);
  pv->mctrl_update = 1;
  break;
 }
}
