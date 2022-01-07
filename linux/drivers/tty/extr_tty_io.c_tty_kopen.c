
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int port; } ;
struct tty_driver {int port; } ;
typedef int dev_t ;


 int EBUSY ;
 struct tty_struct* ERR_CAST (struct tty_struct*) ;
 struct tty_struct* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct tty_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_driver_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_driver_lookup_tty (struct tty_struct*,int *,int) ;
 struct tty_struct* tty_init_dev (struct tty_struct*,int) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_lookup_driver (int ,int *,int*) ;
 int tty_mutex ;
 int tty_port_set_kopened (int ,int) ;

struct tty_struct *tty_kopen(dev_t device)
{
 struct tty_struct *tty;
 struct tty_driver *driver = ((void*)0);
 int index = -1;

 mutex_lock(&tty_mutex);
 driver = tty_lookup_driver(device, ((void*)0), &index);
 if (IS_ERR(driver)) {
  mutex_unlock(&tty_mutex);
  return ERR_CAST(driver);
 }


 tty = tty_driver_lookup_tty(driver, ((void*)0), index);
 if (IS_ERR(tty))
  goto out;

 if (tty) {

  tty_kref_put(tty);
  tty = ERR_PTR(-EBUSY);
 } else {
  tty = tty_init_dev(driver, index);
  if (IS_ERR(tty))
   goto out;
  tty_port_set_kopened(tty->port, 1);
 }
out:
 mutex_unlock(&tty_mutex);
 tty_driver_kref_put(driver);
 return tty;
}
