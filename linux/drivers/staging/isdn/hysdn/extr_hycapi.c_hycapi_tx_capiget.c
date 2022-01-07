
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {TYPE_2__* hyctrlinfo; } ;
typedef TYPE_1__ hysdn_card ;
struct TYPE_5__ {size_t out_idx; struct sk_buff** skbs; int sk_count; } ;
typedef TYPE_2__ hycapictrl_info ;



struct sk_buff *
hycapi_tx_capiget(hysdn_card *card)
{
 hycapictrl_info *cinfo = card->hyctrlinfo;
 if (!cinfo) {
  return (struct sk_buff *)((void*)0);
 }
 if (!cinfo->sk_count)
  return (struct sk_buff *)((void*)0);

 return (cinfo->skbs[cinfo->out_idx]);
}
