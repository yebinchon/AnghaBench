
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int sock; int dev; } ;


 int bus_for_each_dev (int *,int *,struct pcmcia_socket*,int ) ;
 int dev_dbg (int *,char*,int ) ;
 int pcmcia_bus_resume_callback ;
 int pcmcia_bus_type ;

__attribute__((used)) static int pcmcia_bus_resume(struct pcmcia_socket *skt)
{
 dev_dbg(&skt->dev, "resuming socket %d\n", skt->sock);
 bus_for_each_dev(&pcmcia_bus_type, ((void*)0), skt, pcmcia_bus_resume_callback);
 return 0;
}
