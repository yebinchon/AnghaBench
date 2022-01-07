
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_cflag; int c_lflag; } ;
struct tty_driver {int flags; TYPE_1__ init_termios; int subtype; int type; int major; int name; int driver_name; int owner; } ;


 int B9600 ;
 int CLOCAL ;
 int CS8 ;
 int * DEVICE_STRING ;
 int * DRIVER_STRING ;
 int ENOMEM ;
 int GDM_TTY_MAJOR ;
 int GDM_TTY_MINOR ;
 int HUPCL ;
 int ICANON ;
 int IEXTEN ;
 int ISIG ;
 int SERIAL_TYPE_NORMAL ;
 int THIS_MODULE ;
 int TTY_DRIVER_DYNAMIC_DEV ;
 int TTY_DRIVER_REAL_RAW ;
 int TTY_DRIVER_TYPE_SERIAL ;
 int TTY_MAX_COUNT ;
 struct tty_driver* alloc_tty_driver (int ) ;
 struct tty_driver** gdm_driver ;
 int gdm_tty_ops ;
 int put_tty_driver (struct tty_driver*) ;
 int tty_register_driver (struct tty_driver*) ;
 int tty_set_operations (struct tty_driver*,int *) ;
 TYPE_1__ tty_std_termios ;

int register_lte_tty_driver(void)
{
 struct tty_driver *tty_driver;
 int i;
 int ret;

 for (i = 0; i < TTY_MAX_COUNT; i++) {
  tty_driver = alloc_tty_driver(GDM_TTY_MINOR);
  if (!tty_driver)
   return -ENOMEM;

  tty_driver->owner = THIS_MODULE;
  tty_driver->driver_name = DRIVER_STRING[i];
  tty_driver->name = DEVICE_STRING[i];
  tty_driver->major = GDM_TTY_MAJOR;
  tty_driver->type = TTY_DRIVER_TYPE_SERIAL;
  tty_driver->subtype = SERIAL_TYPE_NORMAL;
  tty_driver->flags = TTY_DRIVER_REAL_RAW |
     TTY_DRIVER_DYNAMIC_DEV;
  tty_driver->init_termios = tty_std_termios;
  tty_driver->init_termios.c_cflag = B9600 | CS8 | HUPCL | CLOCAL;
  tty_driver->init_termios.c_lflag = ISIG | ICANON | IEXTEN;
  tty_set_operations(tty_driver, &gdm_tty_ops);

  ret = tty_register_driver(tty_driver);
  if (ret) {
   put_tty_driver(tty_driver);
   return ret;
  }

  gdm_driver[i] = tty_driver;
 }

 return ret;
}
