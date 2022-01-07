
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int last_packet_rate; int txbytesunicast; int txbytesbroadcast; int txbytesmulticast; int txerrunicast; int txerrbroadcast; int txerrmulticast; int txunicast; int txbroadcast; int txmulticast; int txfeedbackretry; int txretrycount; int txerrtotal; int txfeedbackfail; int txoktotal; int txfeedbackok; } ;
struct r8192_priv {TYPE_2__ stats; } ;
struct net_device {int dummy; } ;
typedef int pu1Byte ;
struct TYPE_9__ {int rate; scalar_t__ txuclength; scalar_t__ txbclength; scalar_t__ txmclength; scalar_t__ txucfail; scalar_t__ txbcfail; scalar_t__ txmcfail; scalar_t__ txucok; scalar_t__ txbcok; scalar_t__ txmcok; scalar_t__ txretry; scalar_t__ txfail; scalar_t__ txok; } ;
typedef TYPE_3__ cmpk_tx_status_t ;
struct TYPE_7__ {int (* GetHwRegHandler ) (TYPE_4__*,int ,int ) ;} ;
struct TYPE_10__ {TYPE_1__ HalFunc; } ;
typedef int RT_RF_POWER_STATE ;


 int HW_VAR_RF_STATE ;
 scalar_t__ eRfOff ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 TYPE_4__* pAdapter ;
 scalar_t__ rtState ;
 int stub1 (TYPE_4__*,int ,int ) ;

__attribute__((used)) static void cmpk_count_tx_status(struct net_device *dev,
     cmpk_tx_status_t *pstx_status)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 priv->stats.txfeedbackok += pstx_status->txok;
 priv->stats.txoktotal += pstx_status->txok;

 priv->stats.txfeedbackfail += pstx_status->txfail;
 priv->stats.txerrtotal += pstx_status->txfail;

 priv->stats.txretrycount += pstx_status->txretry;
 priv->stats.txfeedbackretry += pstx_status->txretry;


 priv->stats.txmulticast += pstx_status->txmcok;
 priv->stats.txbroadcast += pstx_status->txbcok;
 priv->stats.txunicast += pstx_status->txucok;

 priv->stats.txerrmulticast += pstx_status->txmcfail;
 priv->stats.txerrbroadcast += pstx_status->txbcfail;
 priv->stats.txerrunicast += pstx_status->txucfail;

 priv->stats.txbytesmulticast += pstx_status->txmclength;
 priv->stats.txbytesbroadcast += pstx_status->txbclength;
 priv->stats.txbytesunicast += pstx_status->txuclength;

 priv->stats.last_packet_rate = pstx_status->rate;
}
