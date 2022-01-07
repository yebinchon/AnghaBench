
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; } ;
struct pcmcia_device {scalar_t__ _irq; int priv; int irq; struct resource** resource; int dev; } ;


 int MAX_IO_WIN ;
 int MAX_WIN ;
 int WIN_FLAGS_REQ ;
 int dev_dbg (int *,char*) ;
 int free_irq (int ,int ) ;
 int pcmcia_release_configuration (struct pcmcia_device*) ;
 int pcmcia_release_io (struct pcmcia_device*) ;
 int pcmcia_release_window (struct pcmcia_device*,struct resource*) ;

void pcmcia_disable_device(struct pcmcia_device *p_dev)
{
 int i;

 dev_dbg(&p_dev->dev, "disabling device\n");

 for (i = 0; i < MAX_WIN; i++) {
  struct resource *res = p_dev->resource[MAX_IO_WIN + i];
  if (res->flags & WIN_FLAGS_REQ)
   pcmcia_release_window(p_dev, res);
 }

 pcmcia_release_configuration(p_dev);
 pcmcia_release_io(p_dev);
 if (p_dev->_irq) {
  free_irq(p_dev->irq, p_dev->priv);
  p_dev->_irq = 0;
 }
}
