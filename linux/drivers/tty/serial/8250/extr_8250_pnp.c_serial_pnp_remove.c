
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int capabilities; } ;


 int PNP_CONSOLE ;
 scalar_t__ pnp_get_drvdata (struct pnp_dev*) ;
 int serial8250_unregister_port (long) ;

__attribute__((used)) static void serial_pnp_remove(struct pnp_dev *dev)
{
 long line = (long)pnp_get_drvdata(dev);

 dev->capabilities &= ~PNP_CONSOLE;
 if (line)
  serial8250_unregister_port(line - 1);
}
