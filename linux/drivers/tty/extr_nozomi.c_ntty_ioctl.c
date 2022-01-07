
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct port* driver_data; } ;
struct async_icount {int dummy; } ;
struct port {int tty_wait; struct async_icount tty_icount; } ;


 int DBG1 (char*,unsigned int,...) ;
 int ENOIOCTLCMD ;

 int ntty_cflags_changed (struct port*,unsigned long,struct async_icount*) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int ntty_ioctl(struct tty_struct *tty,
        unsigned int cmd, unsigned long arg)
{
 struct port *port = tty->driver_data;
 int rval = -ENOIOCTLCMD;

 DBG1("******** IOCTL, cmd: %d", cmd);

 switch (cmd) {
 case 128: {
  struct async_icount cprev = port->tty_icount;

  rval = wait_event_interruptible(port->tty_wait,
    ntty_cflags_changed(port, arg, &cprev));
  break;
 }
 default:
  DBG1("ERR: 0x%08X, %d", cmd, cmd);
  break;
 }

 return rval;
}
