
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int txvookint; int txviokint; int txbeokint; int txbkokint; int txoverflow; int rxoverflow; int rxrdu; int rxint; int txcmdpktokint; int txmanageokint; int txbeaconerr; int txbeaconokint; int ints; int shints; } ;
struct TYPE_7__ {int nIMR_ROK; } ;
struct r8192_priv {scalar_t__ irq_enabled; int irq_th_lock; TYPE_5__* rtllib; TYPE_3__ stats; int irq_rx_tasklet; int irq_prepare_beacon_tasklet; TYPE_2__ InterruptLog; TYPE_1__* ops; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_9__ {int NumTxOkInPeriod; } ;
struct TYPE_10__ {TYPE_4__ LinkDetectInfo; scalar_t__ ack_tx_to_ieee; } ;
struct TYPE_6__ {int (* interrupt_recognized ) (struct net_device*,int*,int*) ;} ;


 int BE_QUEUE ;
 int BK_QUEUE ;
 int COMP_INTR ;
 int HIGH_QUEUE ;
 int IMR_BDOK ;
 int IMR_BEDOK ;
 int IMR_BKDOK ;
 int IMR_BcnInt ;
 int IMR_COMDOK ;
 int IMR_HIGHDOK ;
 int IMR_MGNTDOK ;
 int IMR_RDU ;
 int IMR_ROK ;
 int IMR_RXFOVW ;
 int IMR_TBDER ;
 int IMR_TBDOK ;
 int IMR_TXFOVW ;
 int IMR_VIDOK ;
 int IMR_VODOK ;
 int INTA_MASK ;
 int IRQ_HANDLED ;
 int MGNT_QUEUE ;
 int RT_TRACE (int ,char*) ;
 int TXCMD_QUEUE ;
 int VI_QUEUE ;
 int VO_QUEUE ;
 scalar_t__ _rtl92e_is_tx_queue_empty (struct net_device*) ;
 int _rtl92e_tx_isr (struct net_device*,int ) ;
 int netif_running (struct net_device*) ;
 int rtl92e_readl (struct net_device*,int ) ;
 int rtl92e_writel (struct net_device*,int ,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int rtllib_ps_tx_ack (TYPE_5__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct net_device*,int*,int*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t _rtl92e_irq(int irq, void *netdev)
{
 struct net_device *dev = netdev;
 struct r8192_priv *priv = rtllib_priv(dev);
 unsigned long flags;
 u32 inta;
 u32 intb;

 intb = 0;

 if (priv->irq_enabled == 0)
  goto done;

 spin_lock_irqsave(&priv->irq_th_lock, flags);

 priv->ops->interrupt_recognized(dev, &inta, &intb);
 priv->stats.shints++;

 if (!inta) {
  spin_unlock_irqrestore(&priv->irq_th_lock, flags);
  goto done;
 }

 if (inta == 0xffff) {
  spin_unlock_irqrestore(&priv->irq_th_lock, flags);
  goto done;
 }

 priv->stats.ints++;

 if (!netif_running(dev)) {
  spin_unlock_irqrestore(&priv->irq_th_lock, flags);
  goto done;
 }

 if (inta & IMR_TBDOK) {
  RT_TRACE(COMP_INTR, "beacon ok interrupt!\n");
  priv->stats.txbeaconokint++;
 }

 if (inta & IMR_TBDER) {
  RT_TRACE(COMP_INTR, "beacon ok interrupt!\n");
  priv->stats.txbeaconerr++;
 }

 if (inta & IMR_BDOK)
  RT_TRACE(COMP_INTR, "beacon interrupt!\n");

 if (inta & IMR_MGNTDOK) {
  RT_TRACE(COMP_INTR, "Manage ok interrupt!\n");
  priv->stats.txmanageokint++;
  _rtl92e_tx_isr(dev, MGNT_QUEUE);
  spin_unlock_irqrestore(&priv->irq_th_lock, flags);
  if (priv->rtllib->ack_tx_to_ieee) {
   if (_rtl92e_is_tx_queue_empty(dev)) {
    priv->rtllib->ack_tx_to_ieee = 0;
    rtllib_ps_tx_ack(priv->rtllib, 1);
   }
  }
  spin_lock_irqsave(&priv->irq_th_lock, flags);
 }

 if (inta & IMR_COMDOK) {
  priv->stats.txcmdpktokint++;
  _rtl92e_tx_isr(dev, TXCMD_QUEUE);
 }

 if (inta & IMR_HIGHDOK)
  _rtl92e_tx_isr(dev, HIGH_QUEUE);

 if (inta & IMR_ROK) {
  priv->stats.rxint++;
  priv->InterruptLog.nIMR_ROK++;
  tasklet_schedule(&priv->irq_rx_tasklet);
 }

 if (inta & IMR_BcnInt) {
  RT_TRACE(COMP_INTR, "prepare beacon for interrupt!\n");
  tasklet_schedule(&priv->irq_prepare_beacon_tasklet);
 }

 if (inta & IMR_RDU) {
  RT_TRACE(COMP_INTR, "rx descriptor unavailable!\n");
  priv->stats.rxrdu++;
  rtl92e_writel(dev, INTA_MASK,
         rtl92e_readl(dev, INTA_MASK) & ~IMR_RDU);
  tasklet_schedule(&priv->irq_rx_tasklet);
 }

 if (inta & IMR_RXFOVW) {
  RT_TRACE(COMP_INTR, "rx overflow !\n");
  priv->stats.rxoverflow++;
  tasklet_schedule(&priv->irq_rx_tasklet);
 }

 if (inta & IMR_TXFOVW)
  priv->stats.txoverflow++;

 if (inta & IMR_BKDOK) {
  RT_TRACE(COMP_INTR, "BK Tx OK interrupt!\n");
  priv->stats.txbkokint++;
  priv->rtllib->LinkDetectInfo.NumTxOkInPeriod++;
  _rtl92e_tx_isr(dev, BK_QUEUE);
 }

 if (inta & IMR_BEDOK) {
  RT_TRACE(COMP_INTR, "BE TX OK interrupt!\n");
  priv->stats.txbeokint++;
  priv->rtllib->LinkDetectInfo.NumTxOkInPeriod++;
  _rtl92e_tx_isr(dev, BE_QUEUE);
 }

 if (inta & IMR_VIDOK) {
  RT_TRACE(COMP_INTR, "VI TX OK interrupt!\n");
  priv->stats.txviokint++;
  priv->rtllib->LinkDetectInfo.NumTxOkInPeriod++;
  _rtl92e_tx_isr(dev, VI_QUEUE);
 }

 if (inta & IMR_VODOK) {
  priv->stats.txvookint++;
  RT_TRACE(COMP_INTR, "Vo TX OK interrupt!\n");
  priv->rtllib->LinkDetectInfo.NumTxOkInPeriod++;
  _rtl92e_tx_isr(dev, VO_QUEUE);
 }

 spin_unlock_irqrestore(&priv->irq_th_lock, flags);

done:

 return IRQ_HANDLED;
}
