
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_interrupt_data {int * interrupt_counts; struct eventfd_ctx** eventfd_ctxs; int name; } ;
struct eventfd_ctx {int dummy; } ;


 int eventfd_signal (struct eventfd_ctx*,int) ;
 int trace_gasket_interrupt_event (int ,int) ;

__attribute__((used)) static void
gasket_handle_interrupt(struct gasket_interrupt_data *interrupt_data,
   int interrupt_index)
{
 struct eventfd_ctx *ctx;

 trace_gasket_interrupt_event(interrupt_data->name, interrupt_index);
 ctx = interrupt_data->eventfd_ctxs[interrupt_index];
 if (ctx)
  eventfd_signal(ctx, 1);

 ++(interrupt_data->interrupt_counts[interrupt_index]);
}
