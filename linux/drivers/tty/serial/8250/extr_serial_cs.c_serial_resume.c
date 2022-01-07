
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial_info {int ndev; TYPE_1__* quirk; int * line; } ;
struct pcmcia_device {struct serial_info* priv; } ;
struct TYPE_2__ {int (* wakeup ) (struct pcmcia_device*) ;} ;


 int serial8250_resume_port (int ) ;
 int stub1 (struct pcmcia_device*) ;

__attribute__((used)) static int serial_resume(struct pcmcia_device *link)
{
 struct serial_info *info = link->priv;
 int i;

 for (i = 0; i < info->ndev; i++)
  serial8250_resume_port(info->line[i]);

 if (info->quirk && info->quirk->wakeup)
  info->quirk->wakeup(link);

 return 0;
}
