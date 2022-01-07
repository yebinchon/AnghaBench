
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {int socket_released; int ops_mutex; TYPE_1__* resource_ops; int socket_list; scalar_t__ thread; int ops; int dev; } ;
struct TYPE_2__ {int (* exit ) (struct pcmcia_socket*) ;} ;


 int dev_dbg (int *,char*,int ) ;
 int down_write (int *) ;
 int kthread_stop (scalar_t__) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcmcia_socket_list_rwsem ;
 int stub1 (struct pcmcia_socket*) ;
 int up_write (int *) ;
 int wait_for_completion (int *) ;

void pcmcia_unregister_socket(struct pcmcia_socket *socket)
{
 if (!socket)
  return;

 dev_dbg(&socket->dev, "pcmcia_unregister_socket(0x%p)\n", socket->ops);

 if (socket->thread)
  kthread_stop(socket->thread);


 down_write(&pcmcia_socket_list_rwsem);
 list_del(&socket->socket_list);
 up_write(&pcmcia_socket_list_rwsem);


 if (socket->resource_ops->exit) {
  mutex_lock(&socket->ops_mutex);
  socket->resource_ops->exit(socket);
  mutex_unlock(&socket->ops_mutex);
 }
 wait_for_completion(&socket->socket_released);
}
