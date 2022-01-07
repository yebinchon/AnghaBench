
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int sbi_console_putchar (char const) ;

__attribute__((used)) static int hvc_sbi_tty_put(uint32_t vtermno, const char *buf, int count)
{
 int i;

 for (i = 0; i < count; i++)
  sbi_console_putchar(buf[i]);

 return i;
}
