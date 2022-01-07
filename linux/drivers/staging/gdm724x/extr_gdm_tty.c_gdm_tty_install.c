
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {size_t index; struct gdm* driver_data; TYPE_1__* driver; } ;
struct tty_driver {int dummy; } ;
struct gdm {int port; } ;
struct TYPE_2__ {int driver_name; } ;


 int DRIVER_STRING ;
 int ENODEV ;
 int TTY_MAX_COUNT ;
 struct gdm*** gdm_table ;
 int gdm_table_lock ;
 int match_string (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_port_get (int *) ;
 int tty_port_put (int *) ;
 int tty_standard_install (struct tty_driver*,struct tty_struct*) ;

__attribute__((used)) static int gdm_tty_install(struct tty_driver *driver, struct tty_struct *tty)
{
 struct gdm *gdm = ((void*)0);
 int ret;

 ret = match_string(DRIVER_STRING, TTY_MAX_COUNT,
      tty->driver->driver_name);
 if (ret < 0)
  return -ENODEV;

 mutex_lock(&gdm_table_lock);
 gdm = gdm_table[ret][tty->index];
 if (!gdm) {
  mutex_unlock(&gdm_table_lock);
  return -ENODEV;
 }

 tty_port_get(&gdm->port);

 ret = tty_standard_install(driver, tty);
 if (ret) {
  tty_port_put(&gdm->port);
  mutex_unlock(&gdm_table_lock);
  return ret;
 }

 tty->driver_data = gdm;
 mutex_unlock(&gdm_table_lock);

 return 0;
}
