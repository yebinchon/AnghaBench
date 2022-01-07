
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GEF_WDC_ENABLED_SHIFT ;
 int gef_wdt_count ;
 int gef_wdt_regs ;
 int gef_wdt_spinlock ;
 int ioread32be (int ) ;
 int iowrite32be (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int gef_wdt_toggle_wdc(int enabled_predicate, int field_shift)
{
 u32 data;
 u32 enabled;
 int ret = 0;

 spin_lock(&gef_wdt_spinlock);
 data = ioread32be(gef_wdt_regs);
 enabled = (data >> GEF_WDC_ENABLED_SHIFT) & 1;


 if ((enabled ^ enabled_predicate) == 0) {

  data = (1 << field_shift) | gef_wdt_count;
  iowrite32be(data, gef_wdt_regs);

  data = (2 << field_shift) | gef_wdt_count;
  iowrite32be(data, gef_wdt_regs);
  ret = 1;
 }
 spin_unlock(&gef_wdt_spinlock);

 return ret;
}
