
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int int_works; } ;
struct ieee80211_low_level_stats {int dot11RTSSuccessCount; int dot11RTSFailureCount; int dot11ACKFailureCount; int dot11FCSErrorCount; } ;
struct vnt_private {scalar_t__ op_mode; int bBeaconSent; int bIsBeaconBufReadySet; int lock; TYPE_2__ opts; scalar_t__ PortOffset; int hw; TYPE_3__* vif; scalar_t__ cbBeaconBufReadySetCnt; scalar_t__ bEnablePSMode; struct ieee80211_low_level_stats low_stats; } ;
struct TYPE_4__ {int beacon_int; scalar_t__ enable_beacon; } ;
struct TYPE_6__ {TYPE_1__ bss_conf; } ;


 scalar_t__ AVAIL_TD (struct vnt_private*,int ) ;
 int ISR_AC0DMA ;
 int ISR_BNTX ;
 int ISR_FETALERR ;
 int ISR_RXDMA0 ;
 int ISR_RXDMA1 ;
 int ISR_SOFTTIMER1 ;
 int ISR_TBTT ;
 int ISR_TXDMA0 ;
 scalar_t__ MAC_REG_SOFTPWRCTL ;
 int MACvOneShotTimer1MicroSec (struct vnt_private*,int) ;
 int MACvReadISR (scalar_t__,int*) ;
 int MACvReadMIBCounter (scalar_t__,int*) ;
 int MACvReceive0 (scalar_t__) ;
 int MACvReceive1 (scalar_t__) ;
 int MACvWriteISR (scalar_t__,int) ;
 int MAKE_BEACON_RESERVED ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int PSbIsNextTBTTWakeUp (void*) ;
 int SOFTPWRCTL_SWPECTI ;
 int TYPE_AC0DMA ;
 int TYPE_RXDMA0 ;
 int TYPE_RXDMA1 ;
 int TYPE_TXDMA0 ;
 int VNSvOutPortB (scalar_t__,int ) ;
 int VNSvOutPortW (scalar_t__,int ) ;
 int device_error (struct vnt_private*,int) ;
 scalar_t__ device_rx_srv (struct vnt_private*,int ) ;
 scalar_t__ device_tx_srv (struct vnt_private*,int ) ;
 scalar_t__ ieee80211_queue_stopped (int ,int ) ;
 int ieee80211_wake_queues (int ) ;
 int pr_debug (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vnt_beacon_make (struct vnt_private*,TYPE_3__*) ;
 int vnt_check_bb_vga (struct vnt_private*) ;

__attribute__((used)) static void vnt_interrupt_process(struct vnt_private *priv)
{
 struct ieee80211_low_level_stats *low_stats = &priv->low_stats;
 int max_count = 0;
 u32 mib_counter;
 u32 isr;
 unsigned long flags;

 MACvReadISR(priv->PortOffset, &isr);

 if (isr == 0)
  return;

 if (isr == 0xffffffff) {
  pr_debug("isr = 0xffff\n");
  return;
 }

 spin_lock_irqsave(&priv->lock, flags);


 MACvReadMIBCounter(priv->PortOffset, &mib_counter);

 low_stats->dot11RTSSuccessCount += mib_counter & 0xff;
 low_stats->dot11RTSFailureCount += (mib_counter >> 8) & 0xff;
 low_stats->dot11ACKFailureCount += (mib_counter >> 16) & 0xff;
 low_stats->dot11FCSErrorCount += (mib_counter >> 24) & 0xff;







 while (isr && priv->vif) {
  MACvWriteISR(priv->PortOffset, isr);

  if (isr & ISR_FETALERR) {
   pr_debug(" ISR_FETALERR\n");
   VNSvOutPortB(priv->PortOffset + MAC_REG_SOFTPWRCTL, 0);
   VNSvOutPortW(priv->PortOffset +
         MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPECTI);
   device_error(priv, isr);
  }

  if (isr & ISR_TBTT) {
   if (priv->op_mode != NL80211_IFTYPE_ADHOC)
    vnt_check_bb_vga(priv);

   priv->bBeaconSent = 0;
   if (priv->bEnablePSMode)
    PSbIsNextTBTTWakeUp((void *)priv);

   if ((priv->op_mode == NL80211_IFTYPE_AP ||
       priv->op_mode == NL80211_IFTYPE_ADHOC) &&
       priv->vif->bss_conf.enable_beacon) {
    MACvOneShotTimer1MicroSec(priv,
         (priv->vif->bss_conf.beacon_int - MAKE_BEACON_RESERVED) << 10);
   }


  }

  if (isr & ISR_BNTX) {
   if (priv->op_mode == NL80211_IFTYPE_ADHOC) {
    priv->bIsBeaconBufReadySet = 0;
    priv->cbBeaconBufReadySetCnt = 0;
   }

   priv->bBeaconSent = 1;
  }

  if (isr & ISR_RXDMA0)
   max_count += device_rx_srv(priv, TYPE_RXDMA0);

  if (isr & ISR_RXDMA1)
   max_count += device_rx_srv(priv, TYPE_RXDMA1);

  if (isr & ISR_TXDMA0)
   max_count += device_tx_srv(priv, TYPE_TXDMA0);

  if (isr & ISR_AC0DMA)
   max_count += device_tx_srv(priv, TYPE_AC0DMA);

  if (isr & ISR_SOFTTIMER1) {
   if (priv->vif->bss_conf.enable_beacon)
    vnt_beacon_make(priv, priv->vif);
  }


  if (AVAIL_TD(priv, TYPE_TXDMA0) &&
      AVAIL_TD(priv, TYPE_AC0DMA) &&
      ieee80211_queue_stopped(priv->hw, 0))
   ieee80211_wake_queues(priv->hw);

  MACvReadISR(priv->PortOffset, &isr);

  MACvReceive0(priv->PortOffset);
  MACvReceive1(priv->PortOffset);

  if (max_count > priv->opts.int_works)
   break;
 }

 spin_unlock_irqrestore(&priv->lock, flags);
}
