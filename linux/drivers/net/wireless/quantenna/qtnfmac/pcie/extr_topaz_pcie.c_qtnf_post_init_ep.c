
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct pci_dev* pdev; } ;
struct qtnf_pcie_topaz_state {TYPE_2__* bda; TYPE_1__ base; } ;
struct pci_dev {int irq; } ;
struct TYPE_4__ {int bda_bootstate; } ;


 int ETIMEDOUT ;
 int QTN_BDA_FW_QLINK_DONE ;
 int QTN_FW_QLINK_TIMEOUT_MS ;
 int disable_rx_irqs (struct qtnf_pcie_topaz_state*) ;
 int enable_irq (int ) ;
 scalar_t__ qtnf_poll_state (int *,int ,int ) ;
 int setup_rx_irqs (struct qtnf_pcie_topaz_state*) ;

__attribute__((used)) static int qtnf_post_init_ep(struct qtnf_pcie_topaz_state *ts)
{
 struct pci_dev *pdev = ts->base.pdev;

 setup_rx_irqs(ts);
 disable_rx_irqs(ts);

 if (qtnf_poll_state(&ts->bda->bda_bootstate, QTN_BDA_FW_QLINK_DONE,
       QTN_FW_QLINK_TIMEOUT_MS))
  return -ETIMEDOUT;

 enable_irq(pdev->irq);
 return 0;
}
