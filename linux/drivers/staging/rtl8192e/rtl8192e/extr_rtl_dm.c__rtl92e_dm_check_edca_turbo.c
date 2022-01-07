
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rt_hi_throughput {int IOTAction; size_t IOTPeer; } ;
struct TYPE_4__ {unsigned long txbytesunicast; unsigned long rxbytesunicast; } ;
struct r8192_priv {int bis_cur_rdlstate; int bcurrent_turbo_EDCA; TYPE_2__ stats; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ iw_mode; scalar_t__ state; int bis_any_nonbepkts; scalar_t__ mode; int (* SetHwRegHandler ) (struct net_device*,int ,int *) ;struct rt_hi_throughput* pHTInfo; } ;


 int AC0_BE ;
 int EDCAPARA_BE ;
 int HT_IOT_ACT_DISABLE_EDCA_TURBO ;
 int HT_IOT_ACT_EDCA_BIAS_ON_RX ;
 int HW_VAR_AC_PARAM ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ RTLLIB_LINKED ;
 scalar_t__ WIRELESS_MODE_G ;
 int * edca_setting_DL ;
 int * edca_setting_DL_GMode ;
 int * edca_setting_UL ;
 int rtl92e_writel (struct net_device*,int ,int ) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int stub1 (struct net_device*,int ,int *) ;

__attribute__((used)) static void _rtl92e_dm_check_edca_turbo(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 struct rt_hi_throughput *pHTInfo = priv->rtllib->pHTInfo;

 static unsigned long lastTxOkCnt;
 static unsigned long lastRxOkCnt;
 unsigned long curTxOkCnt = 0;
 unsigned long curRxOkCnt = 0;

 if (priv->rtllib->iw_mode == IW_MODE_ADHOC)
  goto dm_CheckEdcaTurbo_EXIT;
 if (priv->rtllib->state != RTLLIB_LINKED)
  goto dm_CheckEdcaTurbo_EXIT;
 if (priv->rtllib->pHTInfo->IOTAction & HT_IOT_ACT_DISABLE_EDCA_TURBO)
  goto dm_CheckEdcaTurbo_EXIT;

 if (!priv->rtllib->bis_any_nonbepkts) {
  curTxOkCnt = priv->stats.txbytesunicast - lastTxOkCnt;
  curRxOkCnt = priv->stats.rxbytesunicast - lastRxOkCnt;
  if (pHTInfo->IOTAction & HT_IOT_ACT_EDCA_BIAS_ON_RX) {
   if (curTxOkCnt > 4*curRxOkCnt) {
    if (priv->bis_cur_rdlstate ||
        !priv->bcurrent_turbo_EDCA) {
     rtl92e_writel(dev, EDCAPARA_BE,
            edca_setting_UL[pHTInfo->IOTPeer]);
     priv->bis_cur_rdlstate = 0;
    }
   } else {
    if (!priv->bis_cur_rdlstate ||
        !priv->bcurrent_turbo_EDCA) {
     if (priv->rtllib->mode == WIRELESS_MODE_G)
      rtl92e_writel(dev, EDCAPARA_BE,
             edca_setting_DL_GMode[pHTInfo->IOTPeer]);
     else
      rtl92e_writel(dev, EDCAPARA_BE,
             edca_setting_DL[pHTInfo->IOTPeer]);
     priv->bis_cur_rdlstate = 1;
    }
   }
   priv->bcurrent_turbo_EDCA = 1;
  } else {
   if (curRxOkCnt > 4*curTxOkCnt) {
    if (!priv->bis_cur_rdlstate ||
        !priv->bcurrent_turbo_EDCA) {
     if (priv->rtllib->mode == WIRELESS_MODE_G)
      rtl92e_writel(dev, EDCAPARA_BE,
             edca_setting_DL_GMode[pHTInfo->IOTPeer]);
     else
      rtl92e_writel(dev, EDCAPARA_BE,
             edca_setting_DL[pHTInfo->IOTPeer]);
     priv->bis_cur_rdlstate = 1;
    }
   } else {
    if (priv->bis_cur_rdlstate ||
        !priv->bcurrent_turbo_EDCA) {
     rtl92e_writel(dev, EDCAPARA_BE,
            edca_setting_UL[pHTInfo->IOTPeer]);
     priv->bis_cur_rdlstate = 0;
    }

   }

   priv->bcurrent_turbo_EDCA = 1;
  }
 } else {
   if (priv->bcurrent_turbo_EDCA) {
   u8 tmp = AC0_BE;

   priv->rtllib->SetHwRegHandler(dev, HW_VAR_AC_PARAM,
            (u8 *)(&tmp));
   priv->bcurrent_turbo_EDCA = 0;
  }
 }


dm_CheckEdcaTurbo_EXIT:
 priv->rtllib->bis_any_nonbepkts = 0;
 lastTxOkCnt = priv->stats.txbytesunicast;
 lastRxOkCnt = priv->stats.rxbytesunicast;
}
