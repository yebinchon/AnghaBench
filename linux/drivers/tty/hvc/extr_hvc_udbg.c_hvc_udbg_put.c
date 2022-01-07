
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int udbg_putc (char const) ;

__attribute__((used)) static int hvc_udbg_put(uint32_t vtermno, const char *buf, int count)
{
 int i;

 for (i = 0; i < count && udbg_putc; i++)
  udbg_putc(buf[i]);

 return i;
}
