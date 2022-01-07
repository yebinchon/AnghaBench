
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct goldfish_tty {int dummy; } ;


 int goldfish_tty_rw (struct goldfish_tty*,unsigned long,unsigned int,int) ;
 struct goldfish_tty* goldfish_ttys ;

__attribute__((used)) static void goldfish_tty_do_write(int line, const char *buf,
      unsigned int count)
{
 struct goldfish_tty *qtty = &goldfish_ttys[line];
 unsigned long address = (unsigned long)(void *)buf;

 goldfish_tty_rw(qtty, address, count, 1);
}
