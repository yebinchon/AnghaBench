
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_ch_state {int idx2; int request_counter; } ;
struct dim_channel {int addr; struct int_ch_state state; } ;


 int service_channel (int ,int) ;

__attribute__((used)) static bool channel_service_interrupt(struct dim_channel *ch)
{
 struct int_ch_state *const state = &ch->state;

 if (!service_channel(ch->addr, state->idx2))
  return 0;

 state->idx2 ^= 1;
 state->request_counter++;
 return 1;
}
