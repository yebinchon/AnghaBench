
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct fwtty_port* driver_data; } ;
struct fwtty_port {int dummy; } ;


 int fwtty_dbg (struct fwtty_port*,char*,char) ;
 int fwtty_write_xchar (struct fwtty_port*,char) ;

__attribute__((used)) static void fwtty_send_xchar(struct tty_struct *tty, char ch)
{
 struct fwtty_port *port = tty->driver_data;

 fwtty_dbg(port, "%02x\n", ch);

 fwtty_write_xchar(port, ch);
}
