
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rsc_drv {scalar_t__ tcs_base; } ;


 int RSC_DRV_TCS_OFFSET ;
 scalar_t__ readl (scalar_t__) ;
 int udelay (int) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void write_tcs_reg_sync(struct rsc_drv *drv, int reg, int tcs_id,
          u32 data)
{
 writel(data, drv->tcs_base + reg + RSC_DRV_TCS_OFFSET * tcs_id);
 for (;;) {
  if (data == readl(drv->tcs_base + reg +
      RSC_DRV_TCS_OFFSET * tcs_id))
   break;
  udelay(1);
 }
}
