
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; int get_mctrl; int set_termios; int dev; } ;
struct pci_dev {int device; int dev; int bus; int devfn; } ;
struct dw_dma_slave {int src_id; int dst_id; int p_master; scalar_t__ m_master; int * dma_dev; } ;
struct lpss8250 {int dma_maxburst; struct dw_dma_slave dma_param; } ;


 scalar_t__ BYT_TX_OVF_INT ;
 int BYT_TX_OVF_INT_MASK ;
 int EINVAL ;
 unsigned int PCI_DEVFN (int ,int ) ;






 int PCI_SLOT (int ) ;
 int byt_get_mctrl ;
 int byt_set_termios ;
 struct pci_dev* pci_get_slot (int ,unsigned int) ;
 struct pci_dev* to_pci_dev (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int byt_serial_setup(struct lpss8250 *lpss, struct uart_port *port)
{
 struct dw_dma_slave *param = &lpss->dma_param;
 struct pci_dev *pdev = to_pci_dev(port->dev);
 unsigned int dma_devfn = PCI_DEVFN(PCI_SLOT(pdev->devfn), 0);
 struct pci_dev *dma_dev = pci_get_slot(pdev->bus, dma_devfn);

 switch (pdev->device) {
 case 129:
 case 131:
 case 133:
  param->src_id = 3;
  param->dst_id = 2;
  break;
 case 128:
 case 130:
 case 132:
  param->src_id = 5;
  param->dst_id = 4;
  break;
 default:
  return -EINVAL;
 }

 param->dma_dev = &dma_dev->dev;
 param->m_master = 0;
 param->p_master = 1;

 lpss->dma_maxburst = 16;

 port->set_termios = byt_set_termios;
 port->get_mctrl = byt_get_mctrl;


 writel(BYT_TX_OVF_INT_MASK, port->membase + BYT_TX_OVF_INT);

 return 0;
}
