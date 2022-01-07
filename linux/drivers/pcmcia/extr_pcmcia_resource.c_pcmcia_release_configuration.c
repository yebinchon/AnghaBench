
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ io_irq; scalar_t__ Vpp; int flags; } ;
struct pcmcia_socket {scalar_t__ lock_count; int ops_mutex; TYPE_2__* ops; TYPE_1__* io; TYPE_6__ socket; } ;
struct pcmcia_device {scalar_t__ _locked; TYPE_4__* function_config; struct pcmcia_socket* socket; } ;
struct TYPE_9__ {int member_4; int map; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_3__ pccard_io_map ;
struct TYPE_10__ {int state; } ;
typedef TYPE_4__ config_t ;
struct TYPE_8__ {int (* set_io_map ) (struct pcmcia_socket*,TYPE_3__*) ;int (* set_socket ) (struct pcmcia_socket*,TYPE_6__*) ;} ;
struct TYPE_7__ {scalar_t__ Config; int res; } ;


 int CONFIG_IO_REQ ;
 int CONFIG_LOCKED ;
 int MAX_IO_WIN ;
 int SS_OUTPUT_ENA ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct pcmcia_socket*,TYPE_6__*) ;
 int stub2 (struct pcmcia_socket*,TYPE_3__*) ;

int pcmcia_release_configuration(struct pcmcia_device *p_dev)
{
 pccard_io_map io = { 0, 0, 0, 0, 1 };
 struct pcmcia_socket *s = p_dev->socket;
 config_t *c;
 int i;

 mutex_lock(&s->ops_mutex);
 c = p_dev->function_config;
 if (p_dev->_locked) {
  p_dev->_locked = 0;
  if (--(s->lock_count) == 0) {
   s->socket.flags = SS_OUTPUT_ENA;
   s->socket.Vpp = 0;
   s->socket.io_irq = 0;
   s->ops->set_socket(s, &s->socket);
  }
 }
 if (c->state & CONFIG_LOCKED) {
  c->state &= ~CONFIG_LOCKED;
  if (c->state & CONFIG_IO_REQ)
   for (i = 0; i < MAX_IO_WIN; i++) {
    if (!s->io[i].res)
     continue;
    s->io[i].Config--;
    if (s->io[i].Config != 0)
     continue;
    io.map = i;
    s->ops->set_io_map(s, &io);
   }
 }
 mutex_unlock(&s->ops_mutex);

 return 0;
}
