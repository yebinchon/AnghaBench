
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ehv_bc_data* driver_data; } ;
struct ehv_bc_data {int rx_irq; } ;


 int disable_irq (int ) ;

__attribute__((used)) static void ehv_bc_tty_throttle(struct tty_struct *ttys)
{
 struct ehv_bc_data *bc = ttys->driver_data;

 disable_irq(bc->rx_irq);
}
