
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_ch_state {scalar_t__ level; scalar_t__ idx2; scalar_t__ idx1; scalar_t__ service_counter; scalar_t__ request_counter; } ;



__attribute__((used)) static void state_init(struct int_ch_state *state)
{
 state->request_counter = 0;
 state->service_counter = 0;

 state->idx1 = 0;
 state->idx2 = 0;
 state->level = 0;
}
