
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271 {int dummy; } ;


 int REG_INTERRUPT_MASK ;
 int WL1271_ACX_INTR_ALL ;
 int WL18XX_ACX_EVENTS_VECTOR ;
 int WL18XX_INTR_MASK ;
 int wlcore_disable_interrupts (struct wl1271*) ;
 int wlcore_enable_interrupts (struct wl1271*) ;
 int wlcore_write_reg (struct wl1271*,int ,int) ;

__attribute__((used)) static int wl18xx_enable_interrupts(struct wl1271 *wl)
{
 u32 event_mask, intr_mask;
 int ret;

 event_mask = WL18XX_ACX_EVENTS_VECTOR;
 intr_mask = WL18XX_INTR_MASK;

 ret = wlcore_write_reg(wl, REG_INTERRUPT_MASK, event_mask);
 if (ret < 0)
  goto out;

 wlcore_enable_interrupts(wl);

 ret = wlcore_write_reg(wl, REG_INTERRUPT_MASK,
          WL1271_ACX_INTR_ALL & ~intr_mask);
 if (ret < 0)
  goto disable_interrupts;

 return ret;

disable_interrupts:
 wlcore_disable_interrupts(wl);

out:
 return ret;
}
