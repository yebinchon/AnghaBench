
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct tty_driver {struct tty_struct** ttys; TYPE_1__* ops; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct tty_struct* (* lookup ) (struct tty_driver*,struct file*,int) ;} ;


 int EIO ;
 struct tty_struct* ERR_PTR (int ) ;
 int IS_ERR (struct tty_struct*) ;
 struct tty_struct* stub1 (struct tty_driver*,struct file*,int) ;
 int tty_kref_get (struct tty_struct*) ;

__attribute__((used)) static struct tty_struct *tty_driver_lookup_tty(struct tty_driver *driver,
  struct file *file, int idx)
{
 struct tty_struct *tty;

 if (driver->ops->lookup)
  if (!file)
   tty = ERR_PTR(-EIO);
  else
   tty = driver->ops->lookup(driver, file, idx);
 else
  tty = driver->ttys[idx];

 if (!IS_ERR(tty))
  tty_kref_get(tty);
 return tty;
}
