
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s626_private {int * dac_wbuf; int dacpol; } ;
struct comedi_device {int class_dev; scalar_t__ mmio; struct s626_private* private; } ;


 int S626_EOS ;
 int S626_ISR_AFOU ;
 int S626_LP_DACPOL ;
 int S626_MC1_A2OUT ;
 scalar_t__ S626_P_FB_BUFFER2 ;
 scalar_t__ S626_P_ISR ;
 int S626_P_MC1 ;
 int S626_RSD2 ;
 int S626_RSD3 ;
 int S626_SIB_A2 ;
 scalar_t__ S626_VECTPORT (int ) ;
 int S626_XFIFO_2 ;
 int S626_XSD2 ;
 int comedi_timeout (struct comedi_device*,int *,int *,int ,int ) ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int s626_debi_write (struct comedi_device*,int ,int ) ;
 int s626_mc_enable (struct comedi_device*,int ,int ) ;
 int s626_send_dac_eoc ;
 int s626_send_dac_wait_fb_buffer2_msb_00 ;
 int s626_send_dac_wait_fb_buffer2_msb_ff ;
 int s626_send_dac_wait_not_mc1_a2out ;
 int s626_send_dac_wait_ssr_af2_out ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int s626_send_dac(struct comedi_device *dev, u32 val)
{
 struct s626_private *devpriv = dev->private;
 int ret;
 s626_debi_write(dev, S626_LP_DACPOL, devpriv->dacpol);





 *devpriv->dac_wbuf = val;







 s626_mc_enable(dev, S626_MC1_A2OUT, S626_P_MC1);
 writel(S626_ISR_AFOU, dev->mmio + S626_P_ISR);
 ret = comedi_timeout(dev, ((void*)0), ((void*)0), s626_send_dac_eoc,
        s626_send_dac_wait_not_mc1_a2out);
 if (ret) {
  dev_err(dev->class_dev, "DMA transfer timeout\n");
  return ret;
 }
 writel(S626_XSD2 | S626_RSD3 | S626_SIB_A2,
        dev->mmio + S626_VECTPORT(0));
 ret = comedi_timeout(dev, ((void*)0), ((void*)0), s626_send_dac_eoc,
        s626_send_dac_wait_ssr_af2_out);
 if (ret) {
  dev_err(dev->class_dev,
   "TSL timeout waiting for slot 1 to execute\n");
  return ret;
 }
 writel(S626_XSD2 | S626_XFIFO_2 | S626_RSD2 | S626_SIB_A2 | S626_EOS,
        dev->mmio + S626_VECTPORT(0));
 if (readl(dev->mmio + S626_P_FB_BUFFER2) & 0xff000000) {







  ret = comedi_timeout(dev, ((void*)0), ((void*)0), s626_send_dac_eoc,
         s626_send_dac_wait_fb_buffer2_msb_00);
  if (ret) {
   dev_err(dev->class_dev,
    "TSL timeout waiting for slot 0 to execute\n");
   return ret;
  }
 }
 writel(S626_RSD3 | S626_SIB_A2 | S626_EOS,
        dev->mmio + S626_VECTPORT(0));






 ret = comedi_timeout(dev, ((void*)0), ((void*)0), s626_send_dac_eoc,
        s626_send_dac_wait_fb_buffer2_msb_ff);
 if (ret) {
  dev_err(dev->class_dev,
   "TSL timeout waiting for slot 0 to execute\n");
  return ret;
 }
 return 0;
}
