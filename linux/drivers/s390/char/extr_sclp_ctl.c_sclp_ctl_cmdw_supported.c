
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned int*) ;
 unsigned int* sclp_ctl_sccb_wlist ;

__attribute__((used)) static int sclp_ctl_cmdw_supported(unsigned int cmdw)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(sclp_ctl_sccb_wlist); i++) {
  if (cmdw == sclp_ctl_sccb_wlist[i])
   return 1;
 }
 return 0;
}
