
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct labpc_private {int (* write_byte ) (struct comedi_device*,int,int ) ;TYPE_1__* dma; } ;
struct comedi_isadma_desc {scalar_t__ size; } ;
struct comedi_device {struct labpc_private* private; } ;
struct TYPE_2__ {struct comedi_isadma_desc* desc; } ;


 int DMATC_CLEAR_REG ;
 int comedi_isadma_program (struct comedi_isadma_desc*) ;
 int labpc_drain_dma (struct comedi_device*) ;
 int stub1 (struct comedi_device*,int,int ) ;

__attribute__((used)) static void handle_isa_dma(struct comedi_device *dev)
{
 struct labpc_private *devpriv = dev->private;
 struct comedi_isadma_desc *desc = &devpriv->dma->desc[0];

 labpc_drain_dma(dev);

 if (desc->size)
  comedi_isadma_program(desc);


 devpriv->write_byte(dev, 0x1, DMATC_CLEAR_REG);
}
