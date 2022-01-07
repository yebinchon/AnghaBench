
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 int isupper (char) ;
 size_t strlen (char*) ;
 char tolower (char) ;

__attribute__((used)) static void iscsi_initiatorname_tolower(
 char *param_buf)
{
 char *c;
 u32 iqn_size = strlen(param_buf), i;

 for (i = 0; i < iqn_size; i++) {
  c = &param_buf[i];
  if (!isupper(*c))
   continue;

  *c = tolower(*c);
 }
}
