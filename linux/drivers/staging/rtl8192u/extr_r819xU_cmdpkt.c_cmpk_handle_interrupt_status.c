
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int txbeaconerr; int txbeaconokint; } ;
struct r8192_priv {TYPE_2__ stats; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct cmd_pkt_interrupt_status {int length; int interrupt_status; } ;
struct TYPE_3__ {scalar_t__ iw_mode; int bibsscoordinator; } ;


 int DMESG (char*,...) ;
 int ISR_BCN_TIMER_INTR ;
 int ISR_TX_BCN_ERR ;
 int ISR_TX_BCN_OK ;
 scalar_t__ IW_MODE_ADHOC ;
 int cmdpkt_beacontimerinterrupt_819xusb (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
{
 struct cmd_pkt_interrupt_status rx_intr_status;
 struct r8192_priv *priv = ieee80211_priv(dev);

 DMESG("---> cmpk_Handle_Interrupt_Status()\n");






 rx_intr_status.length = pmsg[1];
 if (rx_intr_status.length != (sizeof(struct cmd_pkt_interrupt_status) - 2)) {
  DMESG("cmpk_Handle_Interrupt_Status: wrong length!\n");
  return;
 }


 if (priv->ieee80211->iw_mode == IW_MODE_ADHOC) {

  rx_intr_status.interrupt_status = *((u32 *)(pmsg + 4));

  DMESG("interrupt status = 0x%x\n",
        rx_intr_status.interrupt_status);

  if (rx_intr_status.interrupt_status & ISR_TX_BCN_OK) {
   priv->ieee80211->bibsscoordinator = 1;
   priv->stats.txbeaconokint++;
  } else if (rx_intr_status.interrupt_status & ISR_TX_BCN_ERR) {
   priv->ieee80211->bibsscoordinator = 0;
   priv->stats.txbeaconerr++;
  }

  if (rx_intr_status.interrupt_status & ISR_BCN_TIMER_INTR)
   cmdpkt_beacontimerinterrupt_819xusb(dev);
 }



 DMESG("<---- cmpk_handle_interrupt_status()\n");
}
