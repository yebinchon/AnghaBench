
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_interrupt_data {int num_interrupts; struct eventfd_ctx** eventfd_ctxs; } ;
struct eventfd_ctx {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct eventfd_ctx*) ;
 int PTR_ERR (struct eventfd_ctx*) ;
 struct eventfd_ctx* eventfd_ctx_fdget (int) ;

int gasket_interrupt_set_eventfd(struct gasket_interrupt_data *interrupt_data,
     int interrupt, int event_fd)
{
 struct eventfd_ctx *ctx = eventfd_ctx_fdget(event_fd);

 if (IS_ERR(ctx))
  return PTR_ERR(ctx);

 if (interrupt < 0 || interrupt >= interrupt_data->num_interrupts)
  return -EINVAL;

 interrupt_data->eventfd_ctxs[interrupt] = ctx;
 return 0;
}
