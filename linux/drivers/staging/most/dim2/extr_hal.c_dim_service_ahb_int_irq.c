
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dim_channel {int dummy; } ;
struct TYPE_2__ {int dim_is_initialized; } ;


 int DIM_ERR_DRIVER_NOT_INITIALIZED ;
 int channel_service_interrupt (struct dim_channel* const) ;
 int dim_on_error (int ,char*) ;
 TYPE_1__ g ;

void dim_service_ahb_int_irq(struct dim_channel *const *channels)
{
 bool state_changed;

 if (!g.dim_is_initialized) {
  dim_on_error(DIM_ERR_DRIVER_NOT_INITIALIZED,
        "DIM is not initialized");
  return;
 }

 if (!channels) {
  dim_on_error(DIM_ERR_DRIVER_NOT_INITIALIZED, "Bad channels");
  return;
 }
 do {
  struct dim_channel *const *ch = channels;

  state_changed = 0;

  while (*ch) {
   state_changed |= channel_service_interrupt(*ch);
   ++ch;
  }
 } while (state_changed);
}
