
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 int NI6527_CLR_IRQS ;
 scalar_t__ NI6527_CLR_REG ;
 int NI6527_CLR_RESET_FILT ;
 int NI6527_CTRL_DISABLE_IRQS ;
 scalar_t__ NI6527_CTRL_REG ;
 int ni6527_set_edge_detection (struct comedi_device*,int,int ,int ) ;
 int ni6527_set_filter_enable (struct comedi_device*,int ) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void ni6527_reset(struct comedi_device *dev)
{

 ni6527_set_filter_enable(dev, 0);


 ni6527_set_edge_detection(dev, 0xffffffff, 0, 0);

 writeb(NI6527_CLR_IRQS | NI6527_CLR_RESET_FILT,
        dev->mmio + NI6527_CLR_REG);
 writeb(NI6527_CTRL_DISABLE_IRQS, dev->mmio + NI6527_CTRL_REG);
}
