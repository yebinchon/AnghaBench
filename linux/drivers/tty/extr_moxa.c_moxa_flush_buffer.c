
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct moxa_port* driver_data; } ;
struct moxa_port {int dummy; } ;


 int MoxaPortFlushData (struct moxa_port*,int) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void moxa_flush_buffer(struct tty_struct *tty)
{
 struct moxa_port *ch = tty->driver_data;

 if (ch == ((void*)0))
  return;
 MoxaPortFlushData(ch, 1);
 tty_wakeup(tty);
}
