
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proto; } ;




 TYPE_1__ hvc_opal_boot_priv ;
 unsigned int hvc_opal_boot_termno ;
 int hvc_opal_hvsi_get_chars (unsigned int,char*,int) ;
 int opal_get_chars (unsigned int,char*,int) ;

__attribute__((used)) static int udbg_opal_getc_poll(void)
{
 unsigned int termno = hvc_opal_boot_termno;
 int rc = 0;
 char c;

 switch(hvc_opal_boot_priv.proto) {
 case 128:
  rc = opal_get_chars(termno, &c, 1);
  break;
 case 129:
  rc = hvc_opal_hvsi_get_chars(termno, &c, 1);
  break;
 }
 if (!rc)
  return -1;
 return c;
}
