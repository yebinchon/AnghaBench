
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proto; } ;




 int hvterm_hvsi_put_chars (int ,char*,int) ;
 TYPE_1__** hvterm_privs ;
 int hvterm_raw_put_chars (int ,unsigned char*,int) ;

__attribute__((used)) static void udbg_hvc_putc(char c)
{
 int count = -1;
 unsigned char bounce_buffer[16];

 if (!hvterm_privs[0])
  return;

 if (c == '\n')
  udbg_hvc_putc('\r');

 do {
  switch(hvterm_privs[0]->proto) {
  case 128:




   bounce_buffer[0] = c;
   count = hvterm_raw_put_chars(0, bounce_buffer, 1);
   break;
  case 129:
   count = hvterm_hvsi_put_chars(0, &c, 1);
   break;
  }
 } while(count == 0);
}
