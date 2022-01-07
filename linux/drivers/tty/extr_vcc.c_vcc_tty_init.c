
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int init_termios; int type; int minor_start; int name; int driver_name; } ;


 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int TTY_DRIVER_TYPE_SYSTEM ;
 int VCC_MAX_PORTS ;
 int VCC_MINOR_START ;
 int VCC_TTY_FLAGS ;
 int pr_err (char*) ;
 int pr_info (char*,int ) ;
 int put_tty_driver (TYPE_1__*) ;
 TYPE_1__* tty_alloc_driver (int ,int ) ;
 int tty_register_driver (TYPE_1__*) ;
 int tty_set_operations (TYPE_1__*,int *) ;
 int vcc_device_node ;
 int vcc_driver_name ;
 int vcc_ops ;
 TYPE_1__* vcc_tty_driver ;
 int vcc_tty_termios ;
 int vccdbg (char*) ;
 int version ;

__attribute__((used)) static int vcc_tty_init(void)
{
 int rv;

 pr_info("VCC: %s\n", version);

 vcc_tty_driver = tty_alloc_driver(VCC_MAX_PORTS, VCC_TTY_FLAGS);
 if (IS_ERR(vcc_tty_driver)) {
  pr_err("VCC: TTY driver alloc failed\n");
  return PTR_ERR(vcc_tty_driver);
 }

 vcc_tty_driver->driver_name = vcc_driver_name;
 vcc_tty_driver->name = vcc_device_node;

 vcc_tty_driver->minor_start = VCC_MINOR_START;
 vcc_tty_driver->type = TTY_DRIVER_TYPE_SYSTEM;
 vcc_tty_driver->init_termios = vcc_tty_termios;

 tty_set_operations(vcc_tty_driver, &vcc_ops);

 rv = tty_register_driver(vcc_tty_driver);
 if (rv) {
  pr_err("VCC: TTY driver registration failed\n");
  put_tty_driver(vcc_tty_driver);
  vcc_tty_driver = ((void*)0);
  return rv;
 }

 vccdbg("VCC: TTY driver registered\n");

 return 0;
}
