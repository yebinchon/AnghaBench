
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7280_state {int readback_delay_us; } ;


 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ad7280_delay(struct ad7280_state *st)
{
 if (st->readback_delay_us < 50)
  udelay(st->readback_delay_us);
 else
  usleep_range(250, 500);
}
