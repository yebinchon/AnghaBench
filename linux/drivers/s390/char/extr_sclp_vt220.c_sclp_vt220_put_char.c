
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int __sclp_vt220_write (unsigned char*,int,int ,int ,int) ;

__attribute__((used)) static int
sclp_vt220_put_char(struct tty_struct *tty, unsigned char ch)
{
 return __sclp_vt220_write(&ch, 1, 0, 0, 1);
}
