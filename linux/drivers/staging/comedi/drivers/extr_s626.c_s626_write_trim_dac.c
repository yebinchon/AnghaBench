
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct s626_private {size_t* trim_setpoint; } ;
struct comedi_device {scalar_t__ mmio; struct s626_private* private; } ;


 int S626_EOS ;
 scalar_t__ S626_VECTPORT (int) ;
 int S626_WS1 ;
 int S626_WS3 ;
 int S626_XFIFO_0 ;
 int S626_XFIFO_1 ;
 int S626_XFIFO_2 ;
 int S626_XFIFO_3 ;
 int S626_XSD2 ;
 int s626_send_dac (struct comedi_device*,int) ;
 int* s626_trimchan ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int s626_write_trim_dac(struct comedi_device *dev,
          u8 logical_chan, u8 dac_data)
{
 struct s626_private *devpriv = dev->private;
 u32 chan;





 devpriv->trim_setpoint[logical_chan] = dac_data;


 chan = s626_trimchan[logical_chan];
 writel(S626_XSD2 | S626_XFIFO_1 | S626_WS3,
        dev->mmio + S626_VECTPORT(2));

 writel(S626_XSD2 | S626_XFIFO_0 | S626_WS3,
        dev->mmio + S626_VECTPORT(3));

 writel(S626_XSD2 | S626_XFIFO_3 | S626_WS1,
        dev->mmio + S626_VECTPORT(4));

 writel(S626_XSD2 | S626_XFIFO_2 | S626_WS1 | S626_EOS,
        dev->mmio + S626_VECTPORT(5));
 return s626_send_dac(dev, (chan << 8) | dac_data);
}
