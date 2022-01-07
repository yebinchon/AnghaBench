
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int sock; int dev; } ;


 int EIO ;
 scalar_t__ bus_for_each_dev (int *,int *,struct pcmcia_socket*,int ) ;
 int dev_dbg (int *,char*,int ) ;
 int pcmcia_bus_resume (struct pcmcia_socket*) ;
 int pcmcia_bus_suspend_callback ;
 int pcmcia_bus_type ;

__attribute__((used)) static int pcmcia_bus_suspend(struct pcmcia_socket *skt)
{
 dev_dbg(&skt->dev, "suspending socket %d\n", skt->sock);
 if (bus_for_each_dev(&pcmcia_bus_type, ((void*)0), skt,
        pcmcia_bus_suspend_callback)) {
  pcmcia_bus_resume(skt);
  return -EIO;
 }
 return 0;
}
