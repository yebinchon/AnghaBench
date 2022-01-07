
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ CR_CHAN (int ) ;
 scalar_t__ CR_RANGE (int ) ;
 int S626_GPIO1_HI ;
 scalar_t__ S626_GSEL_BIPOLAR10V ;
 scalar_t__ S626_GSEL_BIPOLAR5V ;
 int S626_LP_GSEL ;
 int S626_LP_ISEL ;
 scalar_t__ S626_P_FB_BUFFER1 ;
 scalar_t__ S626_P_GPIO ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int readl (scalar_t__) ;
 int s626_ai_eoc ;
 unsigned int s626_ai_reg_to_uint (int) ;
 int s626_debi_write (struct comedi_device*,int ,scalar_t__) ;
 int udelay (int) ;
 int usleep_range (int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int s626_ai_insn_read(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 u16 chan = CR_CHAN(insn->chanspec);
 u16 range = CR_RANGE(insn->chanspec);
 u16 adc_spec = 0;
 u32 gpio_image;
 u32 tmp;
 int ret;
 int n;





 if (range == 0)
  adc_spec = (chan << 8) | (S626_GSEL_BIPOLAR5V);
 else
  adc_spec = (chan << 8) | (S626_GSEL_BIPOLAR10V);


 s626_debi_write(dev, S626_LP_GSEL, adc_spec);


 s626_debi_write(dev, S626_LP_ISEL, adc_spec);

 for (n = 0; n < insn->n; n++) {

  usleep_range(10, 20);


  gpio_image = readl(dev->mmio + S626_P_GPIO);

  writel(gpio_image & ~S626_GPIO1_HI, dev->mmio + S626_P_GPIO);

  writel(gpio_image & ~S626_GPIO1_HI, dev->mmio + S626_P_GPIO);
  writel(gpio_image & ~S626_GPIO1_HI, dev->mmio + S626_P_GPIO);

  writel(gpio_image | S626_GPIO1_HI, dev->mmio + S626_P_GPIO);
  ret = comedi_timeout(dev, s, insn, s626_ai_eoc, 0);
  if (ret)
   return ret;


  if (n != 0) {
   tmp = readl(dev->mmio + S626_P_FB_BUFFER1);
   data[n - 1] = s626_ai_reg_to_uint(tmp);
  }
  udelay(4);
 }





 gpio_image = readl(dev->mmio + S626_P_GPIO);

 writel(gpio_image & ~S626_GPIO1_HI, dev->mmio + S626_P_GPIO);

 writel(gpio_image & ~S626_GPIO1_HI, dev->mmio + S626_P_GPIO);
 writel(gpio_image & ~S626_GPIO1_HI, dev->mmio + S626_P_GPIO);

 writel(gpio_image | S626_GPIO1_HI, dev->mmio + S626_P_GPIO);




 ret = comedi_timeout(dev, s, insn, s626_ai_eoc, 0);
 if (ret)
  return ret;




 if (n != 0) {
  tmp = readl(dev->mmio + S626_P_FB_BUFFER1);
  data[n - 1] = s626_ai_reg_to_uint(tmp);
 }

 return n;
}
