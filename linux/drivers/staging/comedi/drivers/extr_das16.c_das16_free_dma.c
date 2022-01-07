
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das16_private_struct {int dma; int timer; } ;
struct comedi_device {struct das16_private_struct* private; } ;


 int comedi_isadma_free (int ) ;
 int del_timer_sync (int *) ;

__attribute__((used)) static void das16_free_dma(struct comedi_device *dev)
{
 struct das16_private_struct *devpriv = dev->private;

 if (devpriv) {
  del_timer_sync(&devpriv->timer);
  comedi_isadma_free(devpriv->dma);
 }
}
