
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct hvc_struct* driver_data; int index; } ;
struct tty_driver {int dummy; } ;
struct hvc_struct {int port; } ;


 int ENODEV ;
 struct hvc_struct* hvc_get_by_index (int ) ;
 int tty_port_install (int *,struct tty_driver*,struct tty_struct*) ;
 int tty_port_put (int *) ;

__attribute__((used)) static int hvc_install(struct tty_driver *driver, struct tty_struct *tty)
{
 struct hvc_struct *hp;
 int rc;


 hp = hvc_get_by_index(tty->index);
 if (!hp)
  return -ENODEV;

 tty->driver_data = hp;

 rc = tty_port_install(&hp->port, driver, tty);
 if (rc)
  tty_port_put(&hp->port);
 return rc;
}
