
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int index; } ;


 int goldfish_tty_do_write (int ,char const*,unsigned int) ;

__attribute__((used)) static void goldfish_tty_console_write(struct console *co, const char *b,
        unsigned count)
{
 goldfish_tty_do_write(co->index, b, count);
}
