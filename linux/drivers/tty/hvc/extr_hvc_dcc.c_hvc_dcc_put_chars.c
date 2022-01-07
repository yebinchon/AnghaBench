
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DCC_STATUS_TX ;
 int __dcc_getstatus () ;
 int __dcc_putchar (char const) ;
 int cpu_relax () ;

__attribute__((used)) static int hvc_dcc_put_chars(uint32_t vt, const char *buf, int count)
{
 int i;

 for (i = 0; i < count; i++) {
  while (__dcc_getstatus() & DCC_STATUS_TX)
   cpu_relax();

  __dcc_putchar(buf[i]);
 }

 return count;
}
