
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct esas2r_adapter {int flash_rev; scalar_t__ flash_ver; } ;


 int HIBYTE (int ) ;
 int HIWORD (scalar_t__) ;
 int LOBYTE (int ) ;
 int LOWORD (scalar_t__) ;
 int esas2r_hdebug (char*,int ) ;
 int sprintf (int ,char*,int,int,int) ;
 int strcpy (int ,char*) ;

bool esas2r_print_flash_rev(struct esas2r_adapter *a)
{
 u16 year = LOWORD(a->flash_ver);
 u8 day = LOBYTE(HIWORD(a->flash_ver));
 u8 month = HIBYTE(HIWORD(a->flash_ver));

 if (day == 0
     || month == 0
     || day > 31
     || month > 12
     || year < 2006
     || year > 9999) {
  strcpy(a->flash_rev, "not found");
  a->flash_ver = 0;
  return 0;
 }

 sprintf(a->flash_rev, "%02d/%02d/%04d", month, day, year);
 esas2r_hdebug("flash version: %s", a->flash_rev);
 return 1;
}
