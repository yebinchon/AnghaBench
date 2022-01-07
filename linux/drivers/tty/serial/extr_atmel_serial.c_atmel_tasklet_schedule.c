
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {int dummy; } ;
struct atmel_uart_port {int tasklet_shutdown; } ;


 int atomic_read (int *) ;
 int tasklet_schedule (struct tasklet_struct*) ;

__attribute__((used)) static void atmel_tasklet_schedule(struct atmel_uart_port *atmel_port,
       struct tasklet_struct *t)
{
 if (!atomic_read(&atmel_port->tasklet_shutdown))
  tasklet_schedule(t);
}
