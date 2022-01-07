
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udbg_opal_getc_poll () ;

__attribute__((used)) static int udbg_opal_getc(void)
{
 int ch;
 for (;;) {
  ch = udbg_opal_getc_poll();
  if (ch != -1)
   return ch;
 }
}
