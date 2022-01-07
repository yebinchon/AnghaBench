
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int failure; } ;
struct TYPE_4__ {TYPE_1__ mic_failure; } ;
struct ks_wlan_private {TYPE_2__ wpa; int net_dev; } ;


 int SME_MIC_FAILURE_CONFIRM ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;
 int netdev_dbg (int ,char*,int ) ;

__attribute__((used)) static
void hostif_mic_failure_confirm(struct ks_wlan_private *priv)
{
 netdev_dbg(priv->net_dev, "mic_failure=%u\n",
     priv->wpa.mic_failure.failure);
 hostif_sme_enqueue(priv, SME_MIC_FAILURE_CONFIRM);
}
