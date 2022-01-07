
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {TYPE_1__* ops; } ;
struct pcmcia_socket {int dummy; } ;
struct TYPE_2__ {int (* socket_suspend ) (struct soc_pcmcia_socket*) ;} ;


 int debug (struct soc_pcmcia_socket*,int,char*) ;
 int soc_pcmcia_hw_disable (struct soc_pcmcia_socket*) ;
 int stub1 (struct soc_pcmcia_socket*) ;
 struct soc_pcmcia_socket* to_soc_pcmcia_socket (struct pcmcia_socket*) ;

__attribute__((used)) static int soc_common_pcmcia_suspend(struct pcmcia_socket *sock)
{
 struct soc_pcmcia_socket *skt = to_soc_pcmcia_socket(sock);

 debug(skt, 2, "suspending socket\n");

 soc_pcmcia_hw_disable(skt);
 if (skt->ops->socket_suspend)
  skt->ops->socket_suspend(skt);

 return 0;
}
