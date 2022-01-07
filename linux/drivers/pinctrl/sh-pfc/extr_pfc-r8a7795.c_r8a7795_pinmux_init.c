
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_pfc {int * info; } ;


 int r8a7795es1 ;
 int r8a7795es1_pinmux_info ;
 scalar_t__ soc_device_match (int ) ;

__attribute__((used)) static int r8a7795_pinmux_init(struct sh_pfc *pfc)
{
 if (soc_device_match(r8a7795es1))
  pfc->info = &r8a7795es1_pinmux_info;

 return 0;
}
