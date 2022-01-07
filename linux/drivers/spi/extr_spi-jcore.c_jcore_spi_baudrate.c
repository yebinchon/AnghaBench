
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct jcore_spi {int speed_hz; int clock_freq; int speed_reg; TYPE_2__* master; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int dev_dbg (int ,char*,int,int) ;
 int jcore_spi_program (struct jcore_spi*) ;

__attribute__((used)) static void jcore_spi_baudrate(struct jcore_spi *hw, int speed)
{
 if (speed == hw->speed_hz) return;
 hw->speed_hz = speed;
 if (speed >= hw->clock_freq / 2)
  hw->speed_reg = 0;
 else
  hw->speed_reg = ((hw->clock_freq / 2 / speed) - 1) << 27;
 jcore_spi_program(hw);
 dev_dbg(hw->master->dev.parent, "speed=%d reg=0x%x\n",
  speed, hw->speed_reg);
}
