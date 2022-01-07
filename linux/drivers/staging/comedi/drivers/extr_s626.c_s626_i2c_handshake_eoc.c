
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int EBUSY ;
 int S626_MC2_UPLD_IIC ;
 int S626_P_MC2 ;
 int s626_mc_test (struct comedi_device*,int ,int ) ;

__attribute__((used)) static int s626_i2c_handshake_eoc(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned long context)
{
 bool status;

 status = s626_mc_test(dev, S626_MC2_UPLD_IIC, S626_P_MC2);
 if (status)
  return 0;
 return -EBUSY;
}
