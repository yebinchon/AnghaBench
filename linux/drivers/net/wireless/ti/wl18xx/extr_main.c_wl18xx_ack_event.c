
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dummy; } ;


 int REG_INTERRUPT_TRIG ;
 int WL18XX_INTR_TRIG_EVENT_ACK ;
 int wlcore_write_reg (struct wl1271*,int ,int ) ;

__attribute__((used)) static int wl18xx_ack_event(struct wl1271 *wl)
{
 return wlcore_write_reg(wl, REG_INTERRUPT_TRIG,
    WL18XX_INTR_TRIG_EVENT_ACK);
}
