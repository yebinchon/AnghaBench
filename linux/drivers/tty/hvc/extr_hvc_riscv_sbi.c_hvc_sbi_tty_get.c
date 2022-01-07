
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int sbi_console_getchar () ;

__attribute__((used)) static int hvc_sbi_tty_get(uint32_t vtermno, char *buf, int count)
{
 int i, c;

 for (i = 0; i < count; i++) {
  c = sbi_console_getchar();
  if (c < 0)
   break;
  buf[i] = c;
 }

 return i;
}
