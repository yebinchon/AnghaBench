
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_socket {int ops_mutex; } ;
struct pcmcia_device {scalar_t__ _io; TYPE_1__* function_config; struct pcmcia_socket* socket; } ;
struct TYPE_3__ {int state; TYPE_2__* io; } ;
typedef TYPE_1__ config_t ;
struct TYPE_4__ {scalar_t__ end; } ;


 int CONFIG_IO_REQ ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_io_space (struct pcmcia_socket*,TYPE_2__*) ;

__attribute__((used)) static int pcmcia_release_io(struct pcmcia_device *p_dev)
{
 struct pcmcia_socket *s = p_dev->socket;
 int ret = -EINVAL;
 config_t *c;

 mutex_lock(&s->ops_mutex);
 if (!p_dev->_io)
  goto out;

 c = p_dev->function_config;

 release_io_space(s, &c->io[0]);

 if (c->io[1].end)
  release_io_space(s, &c->io[1]);

 p_dev->_io = 0;
 c->state &= ~CONFIG_IO_REQ;

out:
 mutex_unlock(&s->ops_mutex);

 return ret;
}
