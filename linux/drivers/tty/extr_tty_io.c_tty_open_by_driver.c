
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int port; } ;
struct tty_driver {int port; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int dev_t ;


 int EBUSY ;
 int EINTR ;
 int ERESTARTSYS ;
 struct tty_struct* ERR_CAST (struct tty_struct*) ;
 struct tty_struct* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct tty_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_driver_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_driver_lookup_tty (struct tty_struct*,struct file*,int) ;
 struct tty_struct* tty_init_dev (struct tty_struct*,int) ;
 int tty_kref_put (struct tty_struct*) ;
 int tty_lock_interruptible (struct tty_struct*) ;
 struct tty_struct* tty_lookup_driver (int ,struct file*,int*) ;
 int tty_mutex ;
 scalar_t__ tty_port_kopened (int ) ;
 int tty_reopen (struct tty_struct*) ;
 int tty_unlock (struct tty_struct*) ;

__attribute__((used)) static struct tty_struct *tty_open_by_driver(dev_t device, struct inode *inode,
          struct file *filp)
{
 struct tty_struct *tty;
 struct tty_driver *driver = ((void*)0);
 int index = -1;
 int retval;

 mutex_lock(&tty_mutex);
 driver = tty_lookup_driver(device, filp, &index);
 if (IS_ERR(driver)) {
  mutex_unlock(&tty_mutex);
  return ERR_CAST(driver);
 }


 tty = tty_driver_lookup_tty(driver, filp, index);
 if (IS_ERR(tty)) {
  mutex_unlock(&tty_mutex);
  goto out;
 }

 if (tty) {
  if (tty_port_kopened(tty->port)) {
   tty_kref_put(tty);
   mutex_unlock(&tty_mutex);
   tty = ERR_PTR(-EBUSY);
   goto out;
  }
  mutex_unlock(&tty_mutex);
  retval = tty_lock_interruptible(tty);
  tty_kref_put(tty);
  if (retval) {
   if (retval == -EINTR)
    retval = -ERESTARTSYS;
   tty = ERR_PTR(retval);
   goto out;
  }
  retval = tty_reopen(tty);
  if (retval < 0) {
   tty_unlock(tty);
   tty = ERR_PTR(retval);
  }
 } else {
  tty = tty_init_dev(driver, index);
  mutex_unlock(&tty_mutex);
 }
out:
 tty_driver_kref_put(driver);
 return tty;
}
