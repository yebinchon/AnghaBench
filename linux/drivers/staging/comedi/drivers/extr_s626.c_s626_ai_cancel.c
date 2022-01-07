
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s626_private {scalar_t__ ai_cmd_running; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ mmio; struct s626_private* private; } ;


 int S626_MC1_ERPS1 ;
 scalar_t__ S626_P_IER ;
 int S626_P_MC1 ;
 int s626_mc_disable (struct comedi_device*,int ,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s626_ai_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct s626_private *devpriv = dev->private;


 s626_mc_disable(dev, S626_MC1_ERPS1, S626_P_MC1);


 writel(0, dev->mmio + S626_P_IER);

 devpriv->ai_cmd_running = 0;

 return 0;
}
