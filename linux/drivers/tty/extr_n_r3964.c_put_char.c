
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct r3964_info {unsigned char bcc; struct tty_struct* tty; } ;


 int tty_put_char (struct tty_struct*,unsigned char) ;

__attribute__((used)) static void put_char(struct r3964_info *pInfo, unsigned char ch)
{
 struct tty_struct *tty = pInfo->tty;

 tty_put_char(tty, ch);
 pInfo->bcc ^= ch;
}
