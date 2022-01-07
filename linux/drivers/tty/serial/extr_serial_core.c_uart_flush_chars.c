
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int uart_start (struct tty_struct*) ;

__attribute__((used)) static void uart_flush_chars(struct tty_struct *tty)
{
 uart_start(tty);
}
