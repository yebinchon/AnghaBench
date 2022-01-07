
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int c_cflag; } ;
struct TYPE_9__ {char* driver_name; int flags; TYPE_1__ init_termios; int subtype; int type; scalar_t__ minor_start; scalar_t__ major; int name; } ;


 int B9600 ;
 int CLOCAL ;
 int CREAD ;
 int CS8 ;
 int ENOMEM ;
 int GB_NAME ;
 int GB_NUM_MINORS ;
 int HUPCL ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int SERIAL_TYPE_NORMAL ;
 int TTY_DRIVER_DYNAMIC_DEV ;
 int TTY_DRIVER_REAL_RAW ;
 int TTY_DRIVER_TYPE_SERIAL ;
 int gb_ops ;
 TYPE_2__* gb_tty_driver ;
 int pr_err (char*,...) ;
 int put_tty_driver (TYPE_2__*) ;
 TYPE_2__* tty_alloc_driver (int ,int ) ;
 int tty_register_driver (TYPE_2__*) ;
 int tty_set_operations (TYPE_2__*,int *) ;
 TYPE_1__ tty_std_termios ;

__attribute__((used)) static int gb_tty_init(void)
{
 int retval = 0;

 gb_tty_driver = tty_alloc_driver(GB_NUM_MINORS, 0);
 if (IS_ERR(gb_tty_driver)) {
  pr_err("Can not allocate tty driver\n");
  retval = -ENOMEM;
  goto fail_unregister_dev;
 }

 gb_tty_driver->driver_name = "gb";
 gb_tty_driver->name = GB_NAME;
 gb_tty_driver->major = 0;
 gb_tty_driver->minor_start = 0;
 gb_tty_driver->type = TTY_DRIVER_TYPE_SERIAL;
 gb_tty_driver->subtype = SERIAL_TYPE_NORMAL;
 gb_tty_driver->flags = TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV;
 gb_tty_driver->init_termios = tty_std_termios;
 gb_tty_driver->init_termios.c_cflag = B9600 | CS8 |
  CREAD | HUPCL | CLOCAL;
 tty_set_operations(gb_tty_driver, &gb_ops);

 retval = tty_register_driver(gb_tty_driver);
 if (retval) {
  pr_err("Can not register tty driver: %d\n", retval);
  goto fail_put_gb_tty;
 }

 return 0;

fail_put_gb_tty:
 put_tty_driver(gb_tty_driver);
fail_unregister_dev:
 return retval;
}
