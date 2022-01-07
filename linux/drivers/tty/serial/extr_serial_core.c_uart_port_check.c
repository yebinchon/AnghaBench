
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct uart_state {struct uart_port* uart_port; TYPE_1__ port; } ;
struct uart_port {int dummy; } ;


 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline struct uart_port *uart_port_check(struct uart_state *state)
{
 lockdep_assert_held(&state->port.mutex);
 return state->uart_port;
}
