
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_udc_dev {int dummy; } ;


 int DMA_DIR_RX ;
 int DMA_DIR_TX ;
 int UDC_DEVCTL_ADDR ;
 int UDC_DEVCTL_RDE ;
 int UDC_DEVCTL_TDE ;
 int pch_udc_bit_set (struct pch_udc_dev*,int ,int ) ;

__attribute__((used)) static inline void pch_udc_set_dma(struct pch_udc_dev *dev, int dir)
{
 if (dir == DMA_DIR_RX)
  pch_udc_bit_set(dev, UDC_DEVCTL_ADDR, UDC_DEVCTL_RDE);
 else if (dir == DMA_DIR_TX)
  pch_udc_bit_set(dev, UDC_DEVCTL_ADDR, UDC_DEVCTL_TDE);
}
