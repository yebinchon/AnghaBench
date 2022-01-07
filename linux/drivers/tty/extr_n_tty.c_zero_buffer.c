
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tty_struct {int dummy; } ;


 int L_ECHO (struct tty_struct*) ;
 int L_ICANON (struct tty_struct*) ;
 int memset (int *,int,int) ;

__attribute__((used)) static void zero_buffer(struct tty_struct *tty, u8 *buffer, int size)
{
 bool icanon = !!L_ICANON(tty);
 bool no_echo = !L_ECHO(tty);

 if (icanon && no_echo)
  memset(buffer, 0x00, size);
}
