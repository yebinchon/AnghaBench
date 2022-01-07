
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ehv_bc_data* driver_data; } ;
struct ehv_bc_data {int port; } ;


 int ehv_bc_tx_dequeue (struct ehv_bc_data*) ;
 int tty_port_hangup (int *) ;

__attribute__((used)) static void ehv_bc_tty_hangup(struct tty_struct *ttys)
{
 struct ehv_bc_data *bc = ttys->driver_data;

 ehv_bc_tx_dequeue(bc);
 tty_port_hangup(&bc->port);
}
