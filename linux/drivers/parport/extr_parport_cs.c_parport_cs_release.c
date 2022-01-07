
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int dev; TYPE_1__* priv; } ;
struct parport {int dummy; } ;
struct TYPE_2__ {scalar_t__ ndev; struct parport* port; } ;
typedef TYPE_1__ parport_info_t ;


 int dev_dbg (int *,char*) ;
 int parport_pc_unregister_port (struct parport*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void parport_cs_release(struct pcmcia_device *link)
{
 parport_info_t *info = link->priv;

 dev_dbg(&link->dev, "parport_release\n");

 if (info->ndev) {
  struct parport *p = info->port;
  parport_pc_unregister_port(p);
 }
 info->ndev = 0;

 pcmcia_disable_device(link);
}
