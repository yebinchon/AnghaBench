
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct {TYPE_1__* counter_dev; } ;
struct comedi_device {int dummy; } ;
typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;
struct TYPE_2__ {struct comedi_device* dev; } ;


 int NISTC_INTA_ENA_G0_GATE ;
 int NISTC_INTA_ENA_G0_TC ;
 int NISTC_INTB_ENA_G1_GATE ;
 int NISTC_INTB_ENA_G1_TC ;
 unsigned int ni_gpct_to_stc_register (struct comedi_device*,int) ;
 int ni_set_bitfield (struct comedi_device*,unsigned int,int,unsigned int) ;
 int ni_stc_writel (struct comedi_device*,unsigned int,unsigned int) ;
 int ni_stc_writew (struct comedi_device*,unsigned int,unsigned int) ;
 int ni_writew (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static void ni_gpct_write_register(struct ni_gpct *counter, unsigned int bits,
       enum ni_gpct_register reg)
{
 struct comedi_device *dev = counter->counter_dev->dev;
 unsigned int stc_register = ni_gpct_to_stc_register(dev, reg);

 if (stc_register == 0)
  return;

 switch (reg) {

 case 140:
 case 133:
 case 138:
 case 131:
 case 139:
 case 132:
 case 141:
 case 134:
  ni_writew(dev, bits, stc_register);
  break;


 case 136:
 case 129:
 case 135:
 case 128:
  ni_stc_writel(dev, bits, stc_register);
  break;


 case 137:
  ni_set_bitfield(dev, stc_register,
    NISTC_INTA_ENA_G0_GATE | NISTC_INTA_ENA_G0_TC,
    bits);
  break;
 case 130:
  ni_set_bitfield(dev, stc_register,
    NISTC_INTB_ENA_G1_GATE | NISTC_INTB_ENA_G1_TC,
    bits);
  break;
 default:
  ni_stc_writew(dev, bits, stc_register);
 }
}
