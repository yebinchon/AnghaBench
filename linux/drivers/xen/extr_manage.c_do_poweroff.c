
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int orderly_poweroff (int) ;
 int pr_info (char*) ;
 int system_state ;

__attribute__((used)) static void do_poweroff(void)
{
 switch (system_state) {
 case 130:
 case 128:
  orderly_poweroff(1);
  break;
 case 129:
  orderly_poweroff(0);
  break;
 default:

  pr_info("Ignoring Xen toolstack shutdown.\n");
  break;
 }
}
