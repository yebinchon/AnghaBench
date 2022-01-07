
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;


 int tty_insert_flip_char (struct tty_port*,int,int ) ;
 int tty_schedule_flip (struct tty_port*) ;

__attribute__((used)) static inline void
kbd_put_queue(struct tty_port *port, int ch)
{
 tty_insert_flip_char(port, ch, 0);
 tty_schedule_flip(port);
}
