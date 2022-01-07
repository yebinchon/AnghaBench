
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * hvterm_privs ;
 int udbg_hvc_getc_poll () ;

__attribute__((used)) static int udbg_hvc_getc(void)
{
 int ch;

 if (!hvterm_privs[0])
  return -1;

 for (;;) {
  ch = udbg_hvc_getc_poll();
  if (ch == -1) {

   volatile unsigned long delay;
   for (delay=0; delay < 2000000; delay++)
    ;
  } else {
   return ch;
  }
 }
}
