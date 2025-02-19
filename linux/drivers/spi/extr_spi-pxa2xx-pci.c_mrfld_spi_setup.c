
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_spi_info {int port_id; int num_chipselect; int dma_burst_size; int dma_filter; struct dw_dma_slave* rx_param; struct dw_dma_slave* tx_param; } ;
struct pci_dev {int dev; int devfn; int bus; } ;
struct dw_dma_slave {int * dma_dev; } ;


 int ENODEV ;
 int PCI_DEVFN (int,int ) ;
 int PCI_FUNC (int ) ;
 int lpss_dma_filter ;
 struct dw_dma_slave mrfld3_rx_param ;
 struct dw_dma_slave mrfld3_tx_param ;
 struct dw_dma_slave mrfld5_rx_param ;
 struct dw_dma_slave mrfld5_tx_param ;
 struct dw_dma_slave mrfld6_rx_param ;
 struct dw_dma_slave mrfld6_tx_param ;
 struct pci_dev* pci_get_slot (int ,int ) ;

__attribute__((used)) static int mrfld_spi_setup(struct pci_dev *dev, struct pxa_spi_info *c)
{
 struct pci_dev *dma_dev = pci_get_slot(dev->bus, PCI_DEVFN(21, 0));
 struct dw_dma_slave *tx, *rx;

 switch (PCI_FUNC(dev->devfn)) {
 case 0:
  c->port_id = 3;
  c->num_chipselect = 1;
  c->tx_param = &mrfld3_tx_param;
  c->rx_param = &mrfld3_rx_param;
  break;
 case 1:
  c->port_id = 5;
  c->num_chipselect = 4;
  c->tx_param = &mrfld5_tx_param;
  c->rx_param = &mrfld5_rx_param;
  break;
 case 2:
  c->port_id = 6;
  c->num_chipselect = 1;
  c->tx_param = &mrfld6_tx_param;
  c->rx_param = &mrfld6_rx_param;
  break;
 default:
  return -ENODEV;
 }

 tx = c->tx_param;
 tx->dma_dev = &dma_dev->dev;

 rx = c->rx_param;
 rx->dma_dev = &dma_dev->dev;

 c->dma_filter = lpss_dma_filter;
 c->dma_burst_size = 8;
 return 0;
}
