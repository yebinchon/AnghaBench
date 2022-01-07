
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned char Vpp; } ;
struct pcmcia_socket {int state; int ops_mutex; TYPE_3__ socket; TYPE_2__* ops; } ;
struct pcmcia_device {unsigned char vpp; int dev; TYPE_1__* function_config; struct pcmcia_socket* socket; } ;
struct TYPE_5__ {scalar_t__ (* set_socket ) (struct pcmcia_socket*,TYPE_3__*) ;} ;
struct TYPE_4__ {int state; } ;


 int CONFIG_LOCKED ;
 int EACCES ;
 int EIO ;
 int SOCKET_PRESENT ;
 int dev_dbg (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ stub1 (struct pcmcia_socket*,TYPE_3__*) ;

int pcmcia_fixup_vpp(struct pcmcia_device *p_dev, unsigned char new_vpp)
{
 struct pcmcia_socket *s = p_dev->socket;
 int ret = 0;

 mutex_lock(&s->ops_mutex);

 dev_dbg(&p_dev->dev, "fixup Vpp to %d\n", new_vpp);

 if (!(s->state & SOCKET_PRESENT) ||
  !(p_dev->function_config->state & CONFIG_LOCKED)) {
  dev_dbg(&p_dev->dev, "No card? Config not locked?\n");
  ret = -EACCES;
  goto unlock;
 }

 s->socket.Vpp = new_vpp;
 if (s->ops->set_socket(s, &s->socket)) {
  dev_warn(&p_dev->dev, "Unable to set VPP\n");
  ret = -EIO;
  goto unlock;
 }
 p_dev->vpp = new_vpp;

unlock:
 mutex_unlock(&s->ops_mutex);

 return ret;
}
