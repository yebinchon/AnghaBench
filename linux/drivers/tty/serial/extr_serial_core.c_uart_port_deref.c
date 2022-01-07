
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {TYPE_1__* state; } ;
struct TYPE_2__ {int remove_wait; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void uart_port_deref(struct uart_port *uport)
{
 if (atomic_dec_and_test(&uport->state->refcount))
  wake_up(&uport->state->remove_wait);
}
