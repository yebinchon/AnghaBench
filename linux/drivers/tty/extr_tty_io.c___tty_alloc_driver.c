
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {unsigned int num; unsigned long flags; struct tty_driver* cdevs; struct tty_driver* termios; struct tty_driver* ttys; struct tty_driver* ports; struct module* owner; int magic; int kref; } ;
struct module {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct tty_driver* ERR_PTR (int) ;
 int GFP_KERNEL ;
 unsigned long TTY_DRIVER_DEVPTS_MEM ;
 unsigned long TTY_DRIVER_DYNAMIC_ALLOC ;
 int TTY_DRIVER_MAGIC ;
 unsigned long TTY_DRIVER_UNNUMBERED_NODE ;
 void* kcalloc (unsigned int,int,int ) ;
 int kfree (struct tty_driver*) ;
 int kref_init (int *) ;
 struct tty_driver* kzalloc (int,int ) ;

struct tty_driver *__tty_alloc_driver(unsigned int lines, struct module *owner,
  unsigned long flags)
{
 struct tty_driver *driver;
 unsigned int cdevs = 1;
 int err;

 if (!lines || (flags & TTY_DRIVER_UNNUMBERED_NODE && lines > 1))
  return ERR_PTR(-EINVAL);

 driver = kzalloc(sizeof(struct tty_driver), GFP_KERNEL);
 if (!driver)
  return ERR_PTR(-ENOMEM);

 kref_init(&driver->kref);
 driver->magic = TTY_DRIVER_MAGIC;
 driver->num = lines;
 driver->owner = owner;
 driver->flags = flags;

 if (!(flags & TTY_DRIVER_DEVPTS_MEM)) {
  driver->ttys = kcalloc(lines, sizeof(*driver->ttys),
    GFP_KERNEL);
  driver->termios = kcalloc(lines, sizeof(*driver->termios),
    GFP_KERNEL);
  if (!driver->ttys || !driver->termios) {
   err = -ENOMEM;
   goto err_free_all;
  }
 }

 if (!(flags & TTY_DRIVER_DYNAMIC_ALLOC)) {
  driver->ports = kcalloc(lines, sizeof(*driver->ports),
    GFP_KERNEL);
  if (!driver->ports) {
   err = -ENOMEM;
   goto err_free_all;
  }
  cdevs = lines;
 }

 driver->cdevs = kcalloc(cdevs, sizeof(*driver->cdevs), GFP_KERNEL);
 if (!driver->cdevs) {
  err = -ENOMEM;
  goto err_free_all;
 }

 return driver;
err_free_all:
 kfree(driver->ports);
 kfree(driver->ttys);
 kfree(driver->termios);
 kfree(driver->cdevs);
 kfree(driver);
 return ERR_PTR(err);
}
