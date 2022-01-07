
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;
struct fwtty_port {int mstatus; } ;


 int TIOCM_CAR ;
 int fwtty_dbg (struct fwtty_port*,char*,int) ;
 struct fwtty_port* port ;
 struct fwtty_port* to_port (struct tty_port*,int ) ;

__attribute__((used)) static int fwtty_port_carrier_raised(struct tty_port *tty_port)
{
 struct fwtty_port *port = to_port(tty_port, port);
 int rc;

 rc = (port->mstatus & TIOCM_CAR);

 fwtty_dbg(port, "%d\n", rc);

 return rc;
}
