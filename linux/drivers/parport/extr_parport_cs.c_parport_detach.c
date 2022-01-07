
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int priv; int dev; } ;


 int dev_dbg (int *,char*) ;
 int kfree (int ) ;
 int parport_cs_release (struct pcmcia_device*) ;

__attribute__((used)) static void parport_detach(struct pcmcia_device *link)
{
    dev_dbg(&link->dev, "parport_detach\n");

    parport_cs_release(link);

    kfree(link->priv);
}
