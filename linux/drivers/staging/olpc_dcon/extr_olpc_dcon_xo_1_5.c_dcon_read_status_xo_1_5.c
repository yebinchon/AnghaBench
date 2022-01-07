
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t OLPC_DCON_STAT0 ;
 size_t OLPC_DCON_STAT1 ;
 int dcon_clear_irq () ;
 int dcon_was_irq () ;
 int gpiod_get_value (int ) ;
 int * gpios ;

__attribute__((used)) static int dcon_read_status_xo_1_5(u8 *status)
{
 if (!dcon_was_irq())
  return -1;


 *status = gpiod_get_value(gpios[OLPC_DCON_STAT0]);
 *status |= gpiod_get_value(gpios[OLPC_DCON_STAT1]) << 1;

 dcon_clear_irq();

 return 0;
}
