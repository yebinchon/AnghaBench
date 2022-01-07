
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pch_thermal_device {scalar_t__ hw_base; scalar_t__ bios_enabled; } ;


 scalar_t__ WPT_TSEL ;
 int WPT_TSEL_ETS ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int pch_wpt_resume(struct pch_thermal_device *ptd)
{
 u8 tsel;

 if (ptd->bios_enabled)
  return 0;

 tsel = readb(ptd->hw_base + WPT_TSEL);

 writeb(tsel | WPT_TSEL_ETS, ptd->hw_base + WPT_TSEL);

 return 0;
}
