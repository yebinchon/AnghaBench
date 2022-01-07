
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_info {int ndev; int * line; } ;
struct pcmcia_device {struct serial_info* priv; } ;


 int serial8250_suspend_port (int ) ;

__attribute__((used)) static int serial_suspend(struct pcmcia_device *link)
{
 struct serial_info *info = link->priv;
 int i;

 for (i = 0; i < info->ndev; i++)
  serial8250_suspend_port(info->line[i]);

 return 0;
}
