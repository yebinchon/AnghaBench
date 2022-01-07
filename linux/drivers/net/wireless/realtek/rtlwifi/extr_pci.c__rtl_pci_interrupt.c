
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int irq_th_lock; } ;
struct TYPE_10__ {int irq_tasklet; int fwevt_wq; int rtl_wq; int irq_prepare_bcn_tasklet; } ;
struct TYPE_7__ {scalar_t__ earlymode_enable; } ;
struct TYPE_11__ {int num_tx_inperiod; } ;
struct rtl_priv {TYPE_2__ locks; TYPE_6__* cfg; TYPE_4__ works; TYPE_1__ rtlhal; TYPE_5__ link_info; } ;
struct rtl_pci {scalar_t__ irq_enabled; } ;
struct rtl_int {int inta; int intb; int intd; int member_0; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_12__ {int* maps; TYPE_3__* ops; } ;
struct TYPE_9__ {int (* enable_interrupt ) (struct ieee80211_hw*) ;int (* interrupt_recognized ) (struct ieee80211_hw*,struct rtl_int*) ;int (* disable_interrupt ) (struct ieee80211_hw*) ;} ;


 int BE_QUEUE ;
 int BK_QUEUE ;
 int COMP_ERR ;
 int COMP_INTR ;
 int DBG_TRACE ;
 int DBG_WARNING ;
 int H2C_QUEUE ;
 scalar_t__ HARDWARE_TYPE_RTL8188EE ;
 scalar_t__ HARDWARE_TYPE_RTL8192SE ;
 scalar_t__ HARDWARE_TYPE_RTL8723AE ;
 scalar_t__ HARDWARE_TYPE_RTL8723BE ;
 scalar_t__ HARDWARE_TYPE_RTL8822BE ;
 int HIGH_QUEUE ;
 int IRQ_HANDLED ;
 int MGNT_QUEUE ;
 size_t RTL_IMR_BCNINT ;
 size_t RTL_IMR_BDOK ;
 size_t RTL_IMR_BEDOK ;
 size_t RTL_IMR_BKDOK ;
 size_t RTL_IMR_C2HCMD ;
 size_t RTL_IMR_COMDOK ;
 size_t RTL_IMR_H2CDOK ;
 size_t RTL_IMR_HIGHDOK ;
 size_t RTL_IMR_HSISR_IND ;
 size_t RTL_IMR_MGNTDOK ;
 size_t RTL_IMR_RDU ;
 size_t RTL_IMR_ROK ;
 size_t RTL_IMR_RXFOVW ;
 size_t RTL_IMR_TBDER ;
 size_t RTL_IMR_TBDOK ;
 size_t RTL_IMR_TXFOVW ;
 size_t RTL_IMR_VIDOK ;
 size_t RTL_IMR_VODOK ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int TXCMD_QUEUE ;
 int VI_QUEUE ;
 int VO_QUEUE ;
 int _rtl_pci_hs_interrupt (struct ieee80211_hw*) ;
 int _rtl_pci_rx_interrupt (struct ieee80211_hw*) ;
 int _rtl_pci_tx_isr (struct ieee80211_hw*,int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ieee80211_hw*) ;
 int stub2 (struct ieee80211_hw*,struct rtl_int*) ;
 int stub3 (struct ieee80211_hw*) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t _rtl_pci_interrupt(int irq, void *dev_id)
{
 struct ieee80211_hw *hw = dev_id;
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 unsigned long flags;
 struct rtl_int intvec = {0};

 irqreturn_t ret = IRQ_HANDLED;

 if (rtlpci->irq_enabled == 0)
  return ret;

 spin_lock_irqsave(&rtlpriv->locks.irq_th_lock, flags);
 rtlpriv->cfg->ops->disable_interrupt(hw);


 rtlpriv->cfg->ops->interrupt_recognized(hw, &intvec);


 if (!intvec.inta || intvec.inta == 0xffff)
  goto done;


 if (intvec.inta & rtlpriv->cfg->maps[RTL_IMR_TBDOK])
  RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE,
    "beacon ok interrupt!\n");

 if (unlikely(intvec.inta & rtlpriv->cfg->maps[RTL_IMR_TBDER]))
  RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE,
    "beacon err interrupt!\n");

 if (intvec.inta & rtlpriv->cfg->maps[RTL_IMR_BDOK])
  RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE, "beacon interrupt!\n");

 if (intvec.inta & rtlpriv->cfg->maps[RTL_IMR_BCNINT]) {
  RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE,
    "prepare beacon for interrupt!\n");
  tasklet_schedule(&rtlpriv->works.irq_prepare_bcn_tasklet);
 }


 if (unlikely(intvec.intb & rtlpriv->cfg->maps[RTL_IMR_TXFOVW]))
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING, "IMR_TXFOVW!\n");

 if (intvec.inta & rtlpriv->cfg->maps[RTL_IMR_MGNTDOK]) {
  RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE,
    "Manage ok interrupt!\n");
  _rtl_pci_tx_isr(hw, MGNT_QUEUE);
 }

 if (intvec.inta & rtlpriv->cfg->maps[RTL_IMR_HIGHDOK]) {
  RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE,
    "HIGH_QUEUE ok interrupt!\n");
  _rtl_pci_tx_isr(hw, HIGH_QUEUE);
 }

 if (intvec.inta & rtlpriv->cfg->maps[RTL_IMR_BKDOK]) {
  rtlpriv->link_info.num_tx_inperiod++;

  RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE,
    "BK Tx OK interrupt!\n");
  _rtl_pci_tx_isr(hw, BK_QUEUE);
 }

 if (intvec.inta & rtlpriv->cfg->maps[RTL_IMR_BEDOK]) {
  rtlpriv->link_info.num_tx_inperiod++;

  RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE,
    "BE TX OK interrupt!\n");
  _rtl_pci_tx_isr(hw, BE_QUEUE);
 }

 if (intvec.inta & rtlpriv->cfg->maps[RTL_IMR_VIDOK]) {
  rtlpriv->link_info.num_tx_inperiod++;

  RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE,
    "VI TX OK interrupt!\n");
  _rtl_pci_tx_isr(hw, VI_QUEUE);
 }

 if (intvec.inta & rtlpriv->cfg->maps[RTL_IMR_VODOK]) {
  rtlpriv->link_info.num_tx_inperiod++;

  RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE,
    "Vo TX OK interrupt!\n");
  _rtl_pci_tx_isr(hw, VO_QUEUE);
 }

 if (rtlhal->hw_type == HARDWARE_TYPE_RTL8822BE) {
  if (intvec.intd & rtlpriv->cfg->maps[RTL_IMR_H2CDOK]) {
   rtlpriv->link_info.num_tx_inperiod++;

   RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE,
     "H2C TX OK interrupt!\n");
   _rtl_pci_tx_isr(hw, H2C_QUEUE);
  }
 }

 if (rtlhal->hw_type == HARDWARE_TYPE_RTL8192SE) {
  if (intvec.inta & rtlpriv->cfg->maps[RTL_IMR_COMDOK]) {
   rtlpriv->link_info.num_tx_inperiod++;

   RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE,
     "CMD TX OK interrupt!\n");
   _rtl_pci_tx_isr(hw, TXCMD_QUEUE);
  }
 }


 if (intvec.inta & rtlpriv->cfg->maps[RTL_IMR_ROK]) {
  RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE, "Rx ok interrupt!\n");
  _rtl_pci_rx_interrupt(hw);
 }

 if (unlikely(intvec.inta & rtlpriv->cfg->maps[RTL_IMR_RDU])) {
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
    "rx descriptor unavailable!\n");
  _rtl_pci_rx_interrupt(hw);
 }

 if (unlikely(intvec.intb & rtlpriv->cfg->maps[RTL_IMR_RXFOVW])) {
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING, "rx overflow !\n");
  _rtl_pci_rx_interrupt(hw);
 }


 if (rtlhal->hw_type == HARDWARE_TYPE_RTL8723AE) {
  if (intvec.inta & rtlpriv->cfg->maps[RTL_IMR_C2HCMD]) {
   RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE,
     "firmware interrupt!\n");
   queue_delayed_work(rtlpriv->works.rtl_wq,
        &rtlpriv->works.fwevt_wq, 0);
  }
 }







 if (rtlhal->hw_type == HARDWARE_TYPE_RTL8188EE ||
     rtlhal->hw_type == HARDWARE_TYPE_RTL8723BE) {
  if (unlikely(intvec.inta &
      rtlpriv->cfg->maps[RTL_IMR_HSISR_IND])) {
   RT_TRACE(rtlpriv, COMP_INTR, DBG_TRACE,
     "hsisr interrupt!\n");
   _rtl_pci_hs_interrupt(hw);
  }
 }

 if (rtlpriv->rtlhal.earlymode_enable)
  tasklet_schedule(&rtlpriv->works.irq_tasklet);

done:
 rtlpriv->cfg->ops->enable_interrupt(hw);
 spin_unlock_irqrestore(&rtlpriv->locks.irq_th_lock, flags);
 return ret;
}
