
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; int dev; int name; int ops; struct tty_driver* driver; int SAK_work; int tty_files; int files_lock; int flow_lock; int ctrl_lock; int atomic_write_lock; int hangup_work; int read_wait; int write_wait; int ldisc_sem; int winsize_mutex; int termios_rwsem; int throttle_mutex; int legacy_mutex; int * pgrp; int * session; int magic; int kref; } ;
struct tty_driver {int ops; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int TTY_MAGIC ;
 int do_SAK_work ;
 int do_tty_hangup ;
 int init_ldsem (int *) ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct tty_struct*) ;
 int kref_init (int *) ;
 struct tty_struct* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int tty_get_device (struct tty_struct*) ;
 scalar_t__ tty_ldisc_init (struct tty_struct*) ;
 int tty_line_name (struct tty_driver*,int,int ) ;

struct tty_struct *alloc_tty_struct(struct tty_driver *driver, int idx)
{
 struct tty_struct *tty;

 tty = kzalloc(sizeof(*tty), GFP_KERNEL);
 if (!tty)
  return ((void*)0);

 kref_init(&tty->kref);
 tty->magic = TTY_MAGIC;
 if (tty_ldisc_init(tty)) {
  kfree(tty);
  return ((void*)0);
 }
 tty->session = ((void*)0);
 tty->pgrp = ((void*)0);
 mutex_init(&tty->legacy_mutex);
 mutex_init(&tty->throttle_mutex);
 init_rwsem(&tty->termios_rwsem);
 mutex_init(&tty->winsize_mutex);
 init_ldsem(&tty->ldisc_sem);
 init_waitqueue_head(&tty->write_wait);
 init_waitqueue_head(&tty->read_wait);
 INIT_WORK(&tty->hangup_work, do_tty_hangup);
 mutex_init(&tty->atomic_write_lock);
 spin_lock_init(&tty->ctrl_lock);
 spin_lock_init(&tty->flow_lock);
 spin_lock_init(&tty->files_lock);
 INIT_LIST_HEAD(&tty->tty_files);
 INIT_WORK(&tty->SAK_work, do_SAK_work);

 tty->driver = driver;
 tty->ops = driver->ops;
 tty->index = idx;
 tty_line_name(driver, idx, tty->name);
 tty->dev = tty_get_device(tty);

 return tty;
}
