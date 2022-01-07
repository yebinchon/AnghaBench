
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pdev; int sysctl_bar; } ;
struct qtnf_pcie_topaz_state {TYPE_1__ base; } ;


 int QTN_EP_RESET_WAIT_MS ;
 int TOPAZ_IPC_IRQ_WORD (int ) ;
 int TOPAZ_LH_IPC4_INT (int ) ;
 int TOPAZ_RC_RST_EP_IRQ ;
 int msleep (int ) ;
 int pci_restore_state (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void qtnf_topaz_reset_ep(struct qtnf_pcie_topaz_state *ts)
{
 writel(TOPAZ_IPC_IRQ_WORD(TOPAZ_RC_RST_EP_IRQ),
        TOPAZ_LH_IPC4_INT(ts->base.sysctl_bar));
 msleep(QTN_EP_RESET_WAIT_MS);
 pci_restore_state(ts->base.pdev);
}
