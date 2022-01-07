
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ S626_LP_CNTR (unsigned int) ;
 int s626_debi_read (struct comedi_device*,scalar_t__) ;

__attribute__((used)) static int s626_enc_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 u16 cntr_latch_reg = S626_LP_CNTR(chan);
 int i;

 for (i = 0; i < insn->n; i++) {
  unsigned int val;





  val = s626_debi_read(dev, cntr_latch_reg);
  val |= (s626_debi_read(dev, cntr_latch_reg + 2) << 16);
  data[i] = val;
 }

 return insn->n;
}
