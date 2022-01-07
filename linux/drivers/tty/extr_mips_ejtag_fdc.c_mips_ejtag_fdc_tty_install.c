
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {size_t index; TYPE_1__* driver_data; } ;
struct tty_driver {struct mips_ejtag_fdc_tty* driver_state; } ;
struct mips_ejtag_fdc_tty {TYPE_1__* ports; } ;
struct TYPE_2__ {int port; } ;


 int tty_port_install (int *,struct tty_driver*,struct tty_struct*) ;

__attribute__((used)) static int mips_ejtag_fdc_tty_install(struct tty_driver *driver,
          struct tty_struct *tty)
{
 struct mips_ejtag_fdc_tty *priv = driver->driver_state;

 tty->driver_data = &priv->ports[tty->index];
 return tty_port_install(&priv->ports[tty->index].port, driver, tty);
}
