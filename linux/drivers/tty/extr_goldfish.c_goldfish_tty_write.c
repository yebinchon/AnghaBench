
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; } ;


 int goldfish_tty_do_write (int ,unsigned char const*,int) ;

__attribute__((used)) static int goldfish_tty_write(struct tty_struct *tty, const unsigned char *buf,
        int count)
{
 goldfish_tty_do_write(tty->index, buf, count);
 return count;
}
