
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct int_ch_state {scalar_t__ service_counter; scalar_t__ request_counter; scalar_t__ level; } ;
struct dim_channel {int done_sw_buffers_number; struct int_ch_state state; } ;


 int DIM_ERR_UNDERFLOW ;
 int DIM_NO_ERROR ;

__attribute__((used)) static u8 channel_service(struct dim_channel *ch)
{
 struct int_ch_state *const state = &ch->state;

 if (state->service_counter != state->request_counter) {
  state->service_counter++;
  if (state->level == 0)
   return DIM_ERR_UNDERFLOW;

  --state->level;
  ch->done_sw_buffers_number++;
 }

 return DIM_NO_ERROR;
}
