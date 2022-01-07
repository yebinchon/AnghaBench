
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_socket {int state; int dev; TYPE_2__* ops; int ops_mutex; scalar_t__ functions; int * fake_cis; scalar_t__ lock_count; int socket; TYPE_1__* callback; } ;
struct TYPE_4__ {int (* get_status ) (struct pcmcia_socket*,int*) ;int (* set_socket ) (struct pcmcia_socket*,int *) ;int (* init ) (struct pcmcia_socket*) ;} ;
struct TYPE_3__ {int (* remove ) (struct pcmcia_socket*) ;} ;


 int SOCKET_INUSE ;
 int SOCKET_PRESENT ;
 int SS_POWERON ;
 int cb_free (struct pcmcia_socket*) ;
 int dead_socket ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int kfree (int *) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int shutdown_delay ;
 int stub1 (struct pcmcia_socket*) ;
 int stub2 (struct pcmcia_socket*) ;
 int stub3 (struct pcmcia_socket*,int *) ;
 int stub4 (struct pcmcia_socket*,int*) ;

__attribute__((used)) static void socket_shutdown(struct pcmcia_socket *s)
{
 int status;

 dev_dbg(&s->dev, "shutdown\n");

 if (s->callback)
  s->callback->remove(s);

 mutex_lock(&s->ops_mutex);
 s->state &= SOCKET_INUSE | SOCKET_PRESENT;
 msleep(shutdown_delay * 10);
 s->state &= SOCKET_INUSE;


 s->socket = dead_socket;
 s->ops->init(s);
 s->ops->set_socket(s, &s->socket);
 s->lock_count = 0;
 kfree(s->fake_cis);
 s->fake_cis = ((void*)0);
 s->functions = 0;







 mutex_unlock(&s->ops_mutex);






 msleep(100);

 s->ops->get_status(s, &status);
 if (status & SS_POWERON) {
  dev_err(&s->dev,
   "*** DANGER *** unable to remove socket power\n");
 }

 s->state &= ~SOCKET_INUSE;
}
