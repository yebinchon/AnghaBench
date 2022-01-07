
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int __sclp_vt220_write (unsigned char const*,int,int,int ,int) ;

__attribute__((used)) static int
sclp_vt220_write(struct tty_struct *tty, const unsigned char *buf, int count)
{
 return __sclp_vt220_write(buf, count, 1, 0, 1);
}
