
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {int state; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_status ) (struct pcmcia_socket*,int*) ;} ;


 int SOCKET_PRESENT ;
 int SOCKET_SUSPEND ;
 int SS_DETECT ;
 int msleep (int) ;
 int socket_insert (struct pcmcia_socket*) ;
 int socket_remove (struct pcmcia_socket*) ;
 int stub1 (struct pcmcia_socket*,int*) ;

__attribute__((used)) static void socket_detect_change(struct pcmcia_socket *skt)
{
 if (!(skt->state & SOCKET_SUSPEND)) {
  int status;

  if (!(skt->state & SOCKET_PRESENT))
   msleep(20);

  skt->ops->get_status(skt, &status);
  if ((skt->state & SOCKET_PRESENT) &&
       !(status & SS_DETECT))
   socket_remove(skt);
  if (!(skt->state & SOCKET_PRESENT) &&
      (status & SS_DETECT))
   socket_insert(skt);
 }
}
