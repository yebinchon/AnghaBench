
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proto; } ;




 int hvterm_hvsi_get_chars (int ,char*,int) ;
 TYPE_1__** hvterm_privs ;
 int hvterm_raw_get_chars (int ,char*,int) ;

__attribute__((used)) static int udbg_hvc_getc_poll(void)
{
 int rc = 0;
 char c;

 if (!hvterm_privs[0])
  return -1;

 switch(hvterm_privs[0]->proto) {
 case 128:
  rc = hvterm_raw_get_chars(0, &c, 1);
  break;
 case 129:
  rc = hvterm_hvsi_get_chars(0, &c, 1);
  break;
 }
 if (!rc)
  return -1;
 return c;
}
