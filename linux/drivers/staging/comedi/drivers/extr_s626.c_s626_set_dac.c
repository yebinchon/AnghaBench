
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct s626_private {int dacpol; } ;
struct comedi_device {scalar_t__ mmio; struct s626_private* private; } ;
typedef scalar_t__ int16_t ;


 int S626_EOS ;
 scalar_t__ S626_VECTPORT (int) ;
 int S626_WS1 ;
 int S626_WS2 ;
 int S626_WS3 ;
 int S626_XFIFO_0 ;
 int S626_XFIFO_1 ;
 int S626_XFIFO_2 ;
 int S626_XFIFO_3 ;
 int S626_XSD2 ;
 int s626_send_dac (struct comedi_device*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int s626_set_dac(struct comedi_device *dev,
   u16 chan, int16_t dacdata)
{
 struct s626_private *devpriv = dev->private;
 u16 signmask;
 u32 ws_image;
 u32 val;




 signmask = 1 << chan;
 if (dacdata < 0) {
  dacdata = -dacdata;
  devpriv->dacpol |= signmask;
 } else {
  devpriv->dacpol &= ~signmask;
 }


 if ((u16)dacdata > 0x1FFF)
  dacdata = 0x1FFF;
 ws_image = (chan & 2) ? S626_WS1 : S626_WS2;

 writel(S626_XSD2 | S626_XFIFO_1 | ws_image,
        dev->mmio + S626_VECTPORT(2));

 writel(S626_XSD2 | S626_XFIFO_0 | ws_image,
        dev->mmio + S626_VECTPORT(3));

 writel(S626_XSD2 | S626_XFIFO_3 | S626_WS3,
        dev->mmio + S626_VECTPORT(4));

 writel(S626_XSD2 | S626_XFIFO_2 | S626_WS3 | S626_EOS,
        dev->mmio + S626_VECTPORT(5));
 val = 0x0F000000;


 val |= 0x00004000;


 val |= ((u32)(chan & 1) << 15);


 val |= (u32)dacdata;
 return s626_send_dac(dev, val);
}
