
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NO_POLL_CHAR ;
 scalar_t__ kgdb_nmi_knock ;
 int kgdb_nmi_poll_one_knock () ;

bool kgdb_nmi_poll_knock(void)
{
 if (kgdb_nmi_knock < 0)
  return 1;

 while (1) {
  int ret;

  ret = kgdb_nmi_poll_one_knock();
  if (ret == NO_POLL_CHAR)
   return 0;
  else if (ret == 1)
   break;
 }
 return 1;
}
