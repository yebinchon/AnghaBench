
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int sock; int dev; } ;


 int dev_notice (int *,char*,int ) ;
 int socket_shutdown (struct pcmcia_socket*) ;

__attribute__((used)) static void socket_remove(struct pcmcia_socket *skt)
{
 dev_notice(&skt->dev, "pccard: card ejected from slot %d\n", skt->sock);
 socket_shutdown(skt);
}
