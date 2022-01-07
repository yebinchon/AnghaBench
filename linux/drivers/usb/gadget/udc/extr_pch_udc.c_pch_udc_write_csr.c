
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_udc_dev {int dummy; } ;


 unsigned long PCH_UDC_CSR (unsigned int) ;
 int pch_udc_csr_busy (struct pch_udc_dev*) ;
 int pch_udc_writel (struct pch_udc_dev*,unsigned long,unsigned long) ;

__attribute__((used)) static void pch_udc_write_csr(struct pch_udc_dev *dev, unsigned long val,
          unsigned int ep)
{
 unsigned long reg = PCH_UDC_CSR(ep);

 pch_udc_csr_busy(dev);
 pch_udc_writel(dev, val, reg);
 pch_udc_csr_busy(dev);
}
