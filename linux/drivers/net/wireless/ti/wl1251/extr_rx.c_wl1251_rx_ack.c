
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251 {int rx_current_buffer; } ;


 int ACX_REG_INTERRUPT_TRIG ;
 int ACX_REG_INTERRUPT_TRIG_H ;
 int INTR_TRIG_RX_PROC0 ;
 int INTR_TRIG_RX_PROC1 ;
 int wl1251_reg_write32 (struct wl1251*,int ,int ) ;

__attribute__((used)) static void wl1251_rx_ack(struct wl1251 *wl)
{
 u32 data, addr;

 if (wl->rx_current_buffer) {
  addr = ACX_REG_INTERRUPT_TRIG_H;
  data = INTR_TRIG_RX_PROC1;
 } else {
  addr = ACX_REG_INTERRUPT_TRIG;
  data = INTR_TRIG_RX_PROC0;
 }

 wl1251_reg_write32(wl, addr, data);


 wl->rx_current_buffer = !wl->rx_current_buffer;
}
