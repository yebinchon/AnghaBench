
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_state {struct uart_port* uart_port; int refcount; } ;
struct uart_port {int dummy; } ;


 scalar_t__ atomic_add_unless (int *,int,int ) ;

__attribute__((used)) static inline struct uart_port *uart_port_ref(struct uart_state *state)
{
 if (atomic_add_unless(&state->refcount, 1, 0))
  return state->uart_port;
 return ((void*)0);
}
