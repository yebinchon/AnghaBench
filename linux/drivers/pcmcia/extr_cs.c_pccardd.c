
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_socket {unsigned int thread_events; unsigned int sysfs_events; int state; int dev; int skt_mutex; TYPE_2__* callback; int thread_lock; int thread_done; int * thread; int socket; TYPE_1__* ops; } ;
struct TYPE_4__ {int (* suspend ) (struct pcmcia_socket*) ;int (* requery ) (struct pcmcia_socket*) ;int (* resume ) (struct pcmcia_socket*) ;} ;
struct TYPE_3__ {int (* set_socket ) (struct pcmcia_socket*,int *) ;int (* init ) (struct pcmcia_socket*) ;} ;


 unsigned int PCMCIA_UEVENT_EJECT ;
 unsigned int PCMCIA_UEVENT_INSERT ;
 unsigned int PCMCIA_UEVENT_REQUERY ;
 unsigned int PCMCIA_UEVENT_RESUME ;
 unsigned int PCMCIA_UEVENT_SUSPEND ;
 int SOCKET_CARDBUS ;
 int SOCKET_PRESENT ;
 unsigned int SS_DETECT ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int complete (int *) ;
 int * current ;
 int dead_socket ;
 int dev_warn (int *,char*,...) ;
 int device_register (int *) ;
 int device_unregister (int *) ;
 scalar_t__ kthread_should_stop () ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pccard_sysfs_add_socket (int *) ;
 int pccard_sysfs_remove_socket (int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_freezable () ;
 int socket_detect_change (struct pcmcia_socket*) ;
 int socket_insert (struct pcmcia_socket*) ;
 int socket_remove (struct pcmcia_socket*) ;
 int socket_resume (struct pcmcia_socket*) ;
 int socket_suspend (struct pcmcia_socket*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pcmcia_socket*) ;
 int stub2 (struct pcmcia_socket*,int *) ;
 int stub3 (struct pcmcia_socket*) ;
 int stub4 (struct pcmcia_socket*) ;
 int stub5 (struct pcmcia_socket*) ;
 int try_to_freeze () ;

__attribute__((used)) static int pccardd(void *__skt)
{
 struct pcmcia_socket *skt = __skt;
 int ret;

 skt->thread = current;
 skt->socket = dead_socket;
 skt->ops->init(skt);
 skt->ops->set_socket(skt, &skt->socket);


 ret = device_register(&skt->dev);
 if (ret) {
  dev_warn(&skt->dev, "PCMCIA: unable to register socket\n");
  skt->thread = ((void*)0);
  complete(&skt->thread_done);
  return 0;
 }
 ret = pccard_sysfs_add_socket(&skt->dev);
 if (ret)
  dev_warn(&skt->dev, "err %d adding socket attributes\n", ret);

 complete(&skt->thread_done);


 msleep(250);

 set_freezable();
 for (;;) {
  unsigned long flags;
  unsigned int events;
  unsigned int sysfs_events;

  spin_lock_irqsave(&skt->thread_lock, flags);
  events = skt->thread_events;
  skt->thread_events = 0;
  sysfs_events = skt->sysfs_events;
  skt->sysfs_events = 0;
  spin_unlock_irqrestore(&skt->thread_lock, flags);

  mutex_lock(&skt->skt_mutex);
  if (events & SS_DETECT)
   socket_detect_change(skt);

  if (sysfs_events) {
   if (sysfs_events & PCMCIA_UEVENT_EJECT)
    socket_remove(skt);
   if (sysfs_events & PCMCIA_UEVENT_INSERT)
    socket_insert(skt);
   if ((sysfs_events & PCMCIA_UEVENT_SUSPEND) &&
    !(skt->state & SOCKET_CARDBUS)) {
    if (skt->callback)
     ret = skt->callback->suspend(skt);
    else
     ret = 0;
    if (!ret) {
     socket_suspend(skt);
     msleep(100);
    }
   }
   if ((sysfs_events & PCMCIA_UEVENT_RESUME) &&
    !(skt->state & SOCKET_CARDBUS)) {
    ret = socket_resume(skt);
    if (!ret && skt->callback)
     skt->callback->resume(skt);
   }
   if ((sysfs_events & PCMCIA_UEVENT_REQUERY) &&
    !(skt->state & SOCKET_CARDBUS)) {
    if (!ret && skt->callback)
     skt->callback->requery(skt);
   }
  }
  mutex_unlock(&skt->skt_mutex);

  if (events || sysfs_events)
   continue;

  if (kthread_should_stop())
   break;

  set_current_state(TASK_INTERRUPTIBLE);

  schedule();


  __set_current_state(TASK_RUNNING);

  try_to_freeze();
 }


 if (skt->state & SOCKET_PRESENT) {
  mutex_lock(&skt->skt_mutex);
  socket_remove(skt);
  mutex_unlock(&skt->skt_mutex);
 }


 pccard_sysfs_remove_socket(&skt->dev);
 device_unregister(&skt->dev);

 return 0;
}
