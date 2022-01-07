
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {int state; int ops_mutex; TYPE_1__* callback; int dev; int sock; } ;
struct TYPE_2__ {int (* add ) (struct pcmcia_socket*) ;} ;


 int EINVAL ;
 int SOCKET_CARDBUS ;
 int SOCKET_CARDBUS_CONFIG ;
 int SOCKET_INUSE ;
 int SOCKET_PRESENT ;
 int cb_alloc (struct pcmcia_socket*) ;
 int dev_dbg (int *,char*) ;
 int dev_notice (int *,char*,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int setup_delay ;
 int socket_setup (struct pcmcia_socket*,int ) ;
 int socket_shutdown (struct pcmcia_socket*) ;
 int stub1 (struct pcmcia_socket*) ;

__attribute__((used)) static int socket_insert(struct pcmcia_socket *skt)
{
 int ret;

 dev_dbg(&skt->dev, "insert\n");

 mutex_lock(&skt->ops_mutex);
 if (skt->state & SOCKET_INUSE) {
  mutex_unlock(&skt->ops_mutex);
  return -EINVAL;
 }
 skt->state |= SOCKET_INUSE;

 ret = socket_setup(skt, setup_delay);
 if (ret == 0) {
  skt->state |= SOCKET_PRESENT;

  dev_notice(&skt->dev, "pccard: %s card inserted into slot %d\n",
      (skt->state & SOCKET_CARDBUS) ? "CardBus" : "PCMCIA",
      skt->sock);







  dev_dbg(&skt->dev, "insert done\n");
  mutex_unlock(&skt->ops_mutex);

  if (!(skt->state & SOCKET_CARDBUS) && (skt->callback))
   skt->callback->add(skt);
 } else {
  mutex_unlock(&skt->ops_mutex);
  socket_shutdown(skt);
 }

 return ret;
}
