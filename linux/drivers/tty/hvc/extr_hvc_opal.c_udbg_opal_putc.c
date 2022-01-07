
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proto; } ;


 int EAGAIN ;


 TYPE_1__ hvc_opal_boot_priv ;
 unsigned int hvc_opal_boot_termno ;
 int hvc_opal_hvsi_put_chars (unsigned int,char*,int) ;
 int opal_flush_console (unsigned int) ;
 int opal_put_chars (unsigned int,char*,int) ;

__attribute__((used)) static void udbg_opal_putc(char c)
{
 unsigned int termno = hvc_opal_boot_termno;
 int count = -1;

 if (c == '\n')
  udbg_opal_putc('\r');

 do {
  switch(hvc_opal_boot_priv.proto) {
  case 128:
   count = opal_put_chars(termno, &c, 1);
   break;
  case 129:
   count = hvc_opal_hvsi_put_chars(termno, &c, 1);
   break;
  }




  opal_flush_console(termno);
 } while(count == 0 || count == -EAGAIN);
}
