
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct comedi_device* priv; } ;
struct daqp_private {int stop; } ;
struct comedi_device {struct daqp_private* private; } ;



__attribute__((used)) static int daqp_cs_suspend(struct pcmcia_device *link)
{
 struct comedi_device *dev = link->priv;
 struct daqp_private *devpriv = dev ? dev->private : ((void*)0);


 if (devpriv)
  devpriv->stop = 1;

 return 0;
}
