
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sclp_early_print_lm (char const*,unsigned int) ;
 int sclp_early_print_vt220 (char const*,unsigned int) ;
 scalar_t__ sclp_early_setup (int,int*,int*) ;
 scalar_t__ sclp_init_state ;
 scalar_t__ sclp_init_state_uninitialized ;

void __sclp_early_printk(const char *str, unsigned int len, unsigned int force)
{
 int have_linemode, have_vt220;

 if (!force && sclp_init_state != sclp_init_state_uninitialized)
  return;
 if (sclp_early_setup(0, &have_linemode, &have_vt220) != 0)
  return;
 if (have_linemode)
  sclp_early_print_lm(str, len);
 if (have_vt220)
  sclp_early_print_vt220(str, len);
 sclp_early_setup(1, &have_linemode, &have_vt220);
}
