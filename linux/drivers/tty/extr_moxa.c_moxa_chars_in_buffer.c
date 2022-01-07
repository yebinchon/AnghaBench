
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct moxa_port* driver_data; } ;
struct moxa_port {int statusflags; } ;


 int EMPTYWAIT ;
 int MoxaPortTxQueue (struct moxa_port*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int moxa_chars_in_buffer(struct tty_struct *tty)
{
 struct moxa_port *ch = tty->driver_data;
 int chars;

 chars = MoxaPortTxQueue(ch);
 if (chars)




         set_bit(EMPTYWAIT, &ch->statusflags);
 return chars;
}
