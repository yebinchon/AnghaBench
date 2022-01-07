
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gds_subvector {int length; } ;


 int EBC_TOLOWER (unsigned char*,int) ;
 int sclp_ebcasc_str (unsigned char*,int) ;
 int sclp_switch_cases (unsigned char*,int) ;
 int sclp_tty_input (unsigned char*,int) ;
 scalar_t__ sclp_tty_tolower ;

__attribute__((used)) static void sclp_get_input(struct gds_subvector *sv)
{
 unsigned char *str;
 int count;

 str = (unsigned char *) (sv + 1);
 count = sv->length - sizeof(*sv);
 if (sclp_tty_tolower)
  EBC_TOLOWER(str, count);
 count = sclp_switch_cases(str, count);

 sclp_ebcasc_str(str, count);


 sclp_tty_input(str, count);
}
