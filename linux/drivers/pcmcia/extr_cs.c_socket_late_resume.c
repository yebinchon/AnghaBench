
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {int state; int suspended_state; TYPE_1__* callback; int dev; scalar_t__ resume_status; int ops_mutex; } ;
struct TYPE_2__ {int (* early_resume ) (struct pcmcia_socket*) ;} ;


 int ENODEV ;
 int SOCKET_CARDBUS ;
 int SOCKET_IN_RESUME ;
 int SOCKET_PRESENT ;
 int SOCKET_SUSPEND ;
 int dev_dbg (int *,char*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int socket_insert (struct pcmcia_socket*) ;
 int socket_shutdown (struct pcmcia_socket*) ;
 int stub1 (struct pcmcia_socket*) ;

__attribute__((used)) static int socket_late_resume(struct pcmcia_socket *skt)
{
 int ret = 0;

 mutex_lock(&skt->ops_mutex);
 skt->state &= ~(SOCKET_SUSPEND | SOCKET_IN_RESUME);
 mutex_unlock(&skt->ops_mutex);

 if (!(skt->state & SOCKET_PRESENT)) {
  ret = socket_insert(skt);
  if (ret == -ENODEV)
   ret = 0;
  return ret;
 }

 if (skt->resume_status) {
  socket_shutdown(skt);
  return 0;
 }

 if (skt->suspended_state != skt->state) {
  dev_dbg(&skt->dev,
   "suspend state 0x%x != resume state 0x%x\n",
   skt->suspended_state, skt->state);

  socket_shutdown(skt);
  return socket_insert(skt);
 }

 if (!(skt->state & SOCKET_CARDBUS) && (skt->callback))
  ret = skt->callback->early_resume(skt);
 return ret;
}
