
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct file {int f_flags; } ;
typedef scalar_t__ dev_t ;


 int ENXIO ;
 struct tty_struct* ERR_PTR (int) ;
 scalar_t__ MKDEV (int ,int ) ;
 int O_NONBLOCK ;
 int TTYAUX_MAJOR ;
 struct tty_struct* get_current_tty () ;
 int tty_kref_put (struct tty_struct*) ;
 int tty_lock (struct tty_struct*) ;
 int tty_reopen (struct tty_struct*) ;
 int tty_unlock (struct tty_struct*) ;

__attribute__((used)) static struct tty_struct *tty_open_current_tty(dev_t device, struct file *filp)
{
 struct tty_struct *tty;
 int retval;

 if (device != MKDEV(TTYAUX_MAJOR, 0))
  return ((void*)0);

 tty = get_current_tty();
 if (!tty)
  return ERR_PTR(-ENXIO);

 filp->f_flags |= O_NONBLOCK;

 tty_lock(tty);
 tty_kref_put(tty);

 retval = tty_reopen(tty);
 if (retval < 0) {
  tty_unlock(tty);
  tty = ERR_PTR(retval);
 }
 return tty;
}
