
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SCLP_CMDW_DECONFIGURE_CPU ;
 int do_core_configure (int) ;

int sclp_core_deconfigure(u8 core)
{
 return do_core_configure(SCLP_CMDW_DECONFIGURE_CPU | core << 8);
}
