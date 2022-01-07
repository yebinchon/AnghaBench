
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ ICP_MULTI_AO ;
 scalar_t__ ICP_MULTI_DAC_CSR ;
 unsigned int ICP_MULTI_DAC_CSR_CHAN (int) ;
 unsigned int ICP_MULTI_DAC_CSR_ST ;
 scalar_t__ ICP_MULTI_DO ;
 scalar_t__ ICP_MULTI_INT_EN ;
 unsigned int ICP_MULTI_INT_MASK ;
 scalar_t__ ICP_MULTI_INT_STAT ;
 int udelay (int) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static int icp_multi_reset(struct comedi_device *dev)
{
 int i;


 writew(0, dev->mmio + ICP_MULTI_INT_EN);
 writew(ICP_MULTI_INT_MASK, dev->mmio + ICP_MULTI_INT_STAT);


 for (i = 0; i < 4; i++) {
  unsigned int dac_csr = ICP_MULTI_DAC_CSR_CHAN(i);


  writew(dac_csr, dev->mmio + ICP_MULTI_DAC_CSR);


  writew(0, dev->mmio + ICP_MULTI_AO);


  writew(dac_csr | ICP_MULTI_DAC_CSR_ST,
         dev->mmio + ICP_MULTI_DAC_CSR);
  udelay(1);
 }


 writew(0, dev->mmio + ICP_MULTI_DO);

 return 0;
}
