
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct uartlite_data {TYPE_1__* reg_ops; } ;
struct uart_port {scalar_t__ membase; struct uartlite_data* private_data; } ;
struct TYPE_2__ {scalar_t__ (* in ) (scalar_t__) ;} ;


 scalar_t__ stub1 (scalar_t__) ;

__attribute__((used)) static inline u32 uart_in32(u32 offset, struct uart_port *port)
{
 struct uartlite_data *pdata = port->private_data;

 return pdata->reg_ops->in(port->membase + offset);
}
