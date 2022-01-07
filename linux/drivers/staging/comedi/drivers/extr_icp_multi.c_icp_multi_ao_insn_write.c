
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ ICP_MULTI_AO ;
 scalar_t__ ICP_MULTI_DAC_CSR ;
 unsigned int ICP_MULTI_DAC_CSR_CHAN (unsigned int) ;
 unsigned int ICP_MULTI_DAC_CSR_ST ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int icp_multi_ao_ready ;
 unsigned int* range_codes_analog ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static int icp_multi_ao_insn_write(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int dac_csr;
 int i;


 dac_csr = ICP_MULTI_DAC_CSR_CHAN(chan);
 dac_csr |= range_codes_analog[range];
 writew(dac_csr, dev->mmio + ICP_MULTI_DAC_CSR);

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];
  int ret;


  ret = comedi_timeout(dev, s, insn, icp_multi_ao_ready, 0);
  if (ret)
   return ret;

  writew(val, dev->mmio + ICP_MULTI_AO);


  writew(dac_csr | ICP_MULTI_DAC_CSR_ST,
         dev->mmio + ICP_MULTI_DAC_CSR);

  s->readback[chan] = val;
 }

 return insn->n;
}
