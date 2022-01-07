
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ mmio; } ;


 int EBUSY ;
 int EINVAL ;
 unsigned int S626_MC1_A2OUT ;
 scalar_t__ S626_P_FB_BUFFER2 ;
 scalar_t__ S626_P_MC1 ;
 scalar_t__ S626_P_SSR ;
 unsigned int S626_SSR_AF2_OUT ;
 unsigned int readl (scalar_t__) ;





__attribute__((used)) static int s626_send_dac_eoc(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned long context)
{
 unsigned int status;

 switch (context) {
 case 129:
  status = readl(dev->mmio + S626_P_MC1);
  if (!(status & S626_MC1_A2OUT))
   return 0;
  break;
 case 128:
  status = readl(dev->mmio + S626_P_SSR);
  if (status & S626_SSR_AF2_OUT)
   return 0;
  break;
 case 131:
  status = readl(dev->mmio + S626_P_FB_BUFFER2);
  if (!(status & 0xff000000))
   return 0;
  break;
 case 130:
  status = readl(dev->mmio + S626_P_FB_BUFFER2);
  if (status & 0xff000000)
   return 0;
  break;
 default:
  return -EINVAL;
 }
 return -EBUSY;
}
