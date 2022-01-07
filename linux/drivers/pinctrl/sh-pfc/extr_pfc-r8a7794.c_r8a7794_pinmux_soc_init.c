
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_pfc {int dummy; } ;


 int r8a7794_tdsel ;
 int sh_pfc_write (struct sh_pfc*,int,int) ;
 scalar_t__ soc_device_match (int ) ;

__attribute__((used)) static int r8a7794_pinmux_soc_init(struct sh_pfc *pfc)
{

 if (soc_device_match(r8a7794_tdsel))
  sh_pfc_write(pfc, 0xe6060068, 0x55555500);

 return 0;
}
