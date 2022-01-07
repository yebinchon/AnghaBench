
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_info {int dummy; } ;
struct pcmcia_device {int dev; struct serial_info* priv; } ;


 int dev_dbg (int *,char*) ;
 int kfree (struct serial_info*) ;
 int serial_remove (struct pcmcia_device*) ;

__attribute__((used)) static void serial_detach(struct pcmcia_device *link)
{
 struct serial_info *info = link->priv;

 dev_dbg(&link->dev, "serial_detach\n");




 serial_remove(link);


 kfree(info);
}
