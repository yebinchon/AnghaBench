
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int state; } ;


 int EBUSY ;
 int SOCKET_SUSPEND ;
 int socket_complete_resume (struct pcmcia_socket*) ;
 int socket_early_resume (struct pcmcia_socket*) ;
 int socket_late_resume (struct pcmcia_socket*) ;

__attribute__((used)) static int socket_resume(struct pcmcia_socket *skt)
{
 int err;
 if (!(skt->state & SOCKET_SUSPEND))
  return -EBUSY;

 socket_early_resume(skt);
 err = socket_late_resume(skt);
 if (!err)
  err = socket_complete_resume(skt);
 return err;
}
