
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_info {int ndev; int slave; int * line; } ;
struct pcmcia_device {int dev; struct serial_info* priv; } ;


 int dev_dbg (int *,char*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int serial8250_unregister_port (int ) ;

__attribute__((used)) static void serial_remove(struct pcmcia_device *link)
{
 struct serial_info *info = link->priv;
 int i;

 dev_dbg(&link->dev, "serial_release\n");




 for (i = 0; i < info->ndev; i++)
  serial8250_unregister_port(info->line[i]);

 if (!info->slave)
  pcmcia_disable_device(link);
}
