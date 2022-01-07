
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt282x_private {struct comedi_isadma* dma; } ;
struct comedi_isadma_desc {int chan; } ;
struct comedi_isadma {struct comedi_isadma_desc* desc; } ;
struct comedi_device {struct dt282x_private* private; } ;


 int comedi_isadma_disable (int ) ;

__attribute__((used)) static void dt282x_disable_dma(struct comedi_device *dev)
{
 struct dt282x_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_isadma_desc *desc;
 int i;

 for (i = 0; i < 2; i++) {
  desc = &dma->desc[i];
  comedi_isadma_disable(desc->chan);
 }
}
