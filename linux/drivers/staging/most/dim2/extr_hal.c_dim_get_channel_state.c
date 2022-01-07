
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int level; } ;
struct dim_channel {int done_sw_buffers_number; TYPE_1__ state; } ;
struct dim_ch_state_t {int ready; int done_buffers; } ;



struct dim_ch_state_t *dim_get_channel_state(struct dim_channel *ch,
          struct dim_ch_state_t *state_ptr)
{
 if (!ch || !state_ptr)
  return ((void*)0);

 state_ptr->ready = ch->state.level < 2;
 state_ptr->done_buffers = ch->done_sw_buffers_number;

 return state_ptr;
}
