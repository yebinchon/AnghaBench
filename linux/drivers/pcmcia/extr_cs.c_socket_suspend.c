
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {int state; int suspended_state; int ops_mutex; TYPE_1__* ops; int socket; } ;
struct TYPE_2__ {int (* suspend ) (struct pcmcia_socket*) ;int (* set_socket ) (struct pcmcia_socket*,int *) ;} ;


 int EBUSY ;
 int SOCKET_IN_RESUME ;
 int SOCKET_SUSPEND ;
 int dead_socket ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct pcmcia_socket*,int *) ;
 int stub2 (struct pcmcia_socket*) ;

__attribute__((used)) static int socket_suspend(struct pcmcia_socket *skt)
{
 if ((skt->state & SOCKET_SUSPEND) && !(skt->state & SOCKET_IN_RESUME))
  return -EBUSY;

 mutex_lock(&skt->ops_mutex);

 if (!(skt->state & SOCKET_IN_RESUME))
  skt->suspended_state = skt->state;

 skt->socket = dead_socket;
 skt->ops->set_socket(skt, &skt->socket);
 if (skt->ops->suspend)
  skt->ops->suspend(skt);
 skt->state |= SOCKET_SUSPEND;
 skt->state &= ~SOCKET_IN_RESUME;
 mutex_unlock(&skt->ops_mutex);
 return 0;
}
