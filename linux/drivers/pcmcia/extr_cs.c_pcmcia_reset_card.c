
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {int state; int skt_mutex; TYPE_1__* callback; int ops_mutex; int dev; } ;
struct TYPE_2__ {int (* resume ) (struct pcmcia_socket*) ;int (* suspend ) (struct pcmcia_socket*) ;} ;


 int EBUSY ;
 int ENODEV ;
 int EPERM ;
 int SOCKET_CARDBUS ;
 int SOCKET_PRESENT ;
 int SOCKET_SUSPEND ;
 int dev_dbg (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int socket_reset (struct pcmcia_socket*) ;
 int stub1 (struct pcmcia_socket*) ;
 int stub2 (struct pcmcia_socket*) ;

int pcmcia_reset_card(struct pcmcia_socket *skt)
{
 int ret;

 dev_dbg(&skt->dev, "resetting socket\n");

 mutex_lock(&skt->skt_mutex);
 do {
  if (!(skt->state & SOCKET_PRESENT)) {
   dev_dbg(&skt->dev, "can't reset, not present\n");
   ret = -ENODEV;
   break;
  }
  if (skt->state & SOCKET_SUSPEND) {
   dev_dbg(&skt->dev, "can't reset, suspended\n");
   ret = -EBUSY;
   break;
  }
  if (skt->state & SOCKET_CARDBUS) {
   dev_dbg(&skt->dev, "can't reset, is cardbus\n");
   ret = -EPERM;
   break;
  }

  if (skt->callback)
   skt->callback->suspend(skt);
  mutex_lock(&skt->ops_mutex);
  ret = socket_reset(skt);
  mutex_unlock(&skt->ops_mutex);
  if ((ret == 0) && (skt->callback))
   skt->callback->resume(skt);

  ret = 0;
 } while (0);
 mutex_unlock(&skt->skt_mutex);

 return ret;
}
