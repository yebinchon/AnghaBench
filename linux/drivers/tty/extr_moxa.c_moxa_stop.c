
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct moxa_port* driver_data; } ;
struct moxa_port {int statusflags; } ;


 int MoxaPortTxDisable (struct moxa_port*) ;
 int TXSTOPPED ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void moxa_stop(struct tty_struct *tty)
{
 struct moxa_port *ch = tty->driver_data;

 if (ch == ((void*)0))
  return;
 MoxaPortTxDisable(ch);
 set_bit(TXSTOPPED, &ch->statusflags);
}
