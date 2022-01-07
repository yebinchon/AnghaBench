
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct port* driver_data; } ;
struct tty_driver {int dummy; } ;
struct port {int dummy; } ;
struct nozomi {scalar_t__ state; } ;


 int ENODEV ;
 scalar_t__ NOZOMI_STATE_READY ;
 struct nozomi* get_dc_by_tty (struct tty_struct*) ;
 struct port* get_port_by_tty (struct tty_struct*) ;
 int tty_standard_install (struct tty_driver*,struct tty_struct*) ;

__attribute__((used)) static int ntty_install(struct tty_driver *driver, struct tty_struct *tty)
{
 struct port *port = get_port_by_tty(tty);
 struct nozomi *dc = get_dc_by_tty(tty);
 int ret;
 if (!port || !dc || dc->state != NOZOMI_STATE_READY)
  return -ENODEV;
 ret = tty_standard_install(driver, tty);
 if (ret == 0)
  tty->driver_data = port;
 return ret;
}
