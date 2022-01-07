
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gigaset_driver {int tty; int have_tty; } ;
struct cardstate {int mutex; int * tty_dev; int minor_index; int port; int if_wake_tasklet; struct gigaset_driver* driver; } ;


 int IS_ERR (int *) ;
 int dev_set_drvdata (int *,struct cardstate*) ;
 int if_wake ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warning (char*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int * tty_port_register_device (int *,int ,int ,int *) ;

void gigaset_if_init(struct cardstate *cs)
{
 struct gigaset_driver *drv;

 drv = cs->driver;
 if (!drv->have_tty)
  return;

 tasklet_init(&cs->if_wake_tasklet, if_wake, (unsigned long) cs);

 mutex_lock(&cs->mutex);
 cs->tty_dev = tty_port_register_device(&cs->port, drv->tty,
   cs->minor_index, ((void*)0));

 if (!IS_ERR(cs->tty_dev))
  dev_set_drvdata(cs->tty_dev, cs);
 else {
  pr_warning("could not register device to the tty subsystem\n");
  cs->tty_dev = ((void*)0);
 }
 mutex_unlock(&cs->mutex);
}
