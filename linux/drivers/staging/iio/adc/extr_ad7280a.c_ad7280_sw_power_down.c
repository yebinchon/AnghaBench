
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7280_state {int ctrl_hb; } ;


 int AD7280A_CONTROL_HB ;
 int AD7280A_CTRL_HB_PWRDN_SW ;
 int AD7280A_DEVADDR_MASTER ;
 int ad7280_write (struct ad7280_state*,int ,int ,int,int) ;

__attribute__((used)) static void ad7280_sw_power_down(void *data)
{
 struct ad7280_state *st = data;

 ad7280_write(st, AD7280A_DEVADDR_MASTER, AD7280A_CONTROL_HB, 1,
       AD7280A_CTRL_HB_PWRDN_SW | st->ctrl_hb);
}
