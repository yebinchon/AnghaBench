
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int fck; int bus_pick_width; int bus_pick_count; } ;


 int RD_ACCESS ;
 int SOSSI_FIFO_REG ;
 int SOSSI_INIT1_REG ;
 int _set_bits_per_cycle (int ,int ) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int set_cycles (unsigned int) ;
 int set_timing (int ) ;
 TYPE_1__ sossi ;
 int sossi_read_reg (int ) ;
 int sossi_read_reg16 (int ) ;
 int sossi_read_reg8 (int ) ;
 int sossi_set_bits (int ,int) ;
 int sossi_start_transfer () ;
 int sossi_stop_transfer () ;

__attribute__((used)) static void sossi_read_data(void *data, unsigned int len)
{
 clk_enable(sossi.fck);
 set_timing(RD_ACCESS);
 _set_bits_per_cycle(sossi.bus_pick_count, sossi.bus_pick_width);

 sossi_set_bits(SOSSI_INIT1_REG, 1 << 18);
 set_cycles(len);
 sossi_start_transfer();
 while (len >= 4) {
  *(u32 *) data = sossi_read_reg(SOSSI_FIFO_REG);
  len -= 4;
  data += 4;
 }
 while (len >= 2) {
  *(u16 *) data = sossi_read_reg16(SOSSI_FIFO_REG);
  len -= 2;
  data += 2;
 }
 while (len) {
  *(u8 *) data = sossi_read_reg8(SOSSI_FIFO_REG);
  len--;
  data++;
 }
 sossi_stop_transfer();
 clk_disable(sossi.fck);
}
