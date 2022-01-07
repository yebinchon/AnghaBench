
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int DSIU_CLOCK ;


 int SIU_CLOCK ;
 int vr41xx_mask_clock (int ) ;
 int vr41xx_supply_clock (int ) ;

__attribute__((used)) static void siu_pm(struct uart_port *port, unsigned int state, unsigned int oldstate)
{
 switch (state) {
 case 0:
  switch (port->type) {
  case 128:
   vr41xx_supply_clock(SIU_CLOCK);
   break;
  case 129:
   vr41xx_supply_clock(DSIU_CLOCK);
   break;
  }
  break;
 case 3:
  switch (port->type) {
  case 128:
   vr41xx_mask_clock(SIU_CLOCK);
   break;
  case 129:
   vr41xx_mask_clock(DSIU_CLOCK);
   break;
  }
  break;
 }
}
