
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cw1200_txinfo {int skb; TYPE_3__* tx_info; int hdrlen; TYPE_4__* hdr; } ;
struct cw1200_common {int dummy; } ;
struct TYPE_8__ {int frame_control; } ;
struct TYPE_6__ {TYPE_1__* hw_key; } ;
struct TYPE_7__ {TYPE_2__ control; } ;
struct TYPE_5__ {int icv_len; scalar_t__ cipher; scalar_t__ iv_len; } ;


 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 int ieee80211_has_protected (int ) ;
 int skb_put (int ,int) ;

__attribute__((used)) static int
cw1200_tx_h_crypt(struct cw1200_common *priv,
    struct cw1200_txinfo *t)
{
 if (!t->tx_info->control.hw_key ||
     !ieee80211_has_protected(t->hdr->frame_control))
  return 0;

 t->hdrlen += t->tx_info->control.hw_key->iv_len;
 skb_put(t->skb, t->tx_info->control.hw_key->icv_len);

 if (t->tx_info->control.hw_key->cipher == WLAN_CIPHER_SUITE_TKIP)
  skb_put(t->skb, 8);

 return 0;
}
