
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct arc4context {int* state; scalar_t__ y; scalar_t__ x; } ;



__attribute__((used)) static void arcfour_init(struct arc4context *parc4ctx, u8 *key, u32 key_len)
{
 u32 t, u;
 u32 keyindex;
 u32 stateindex;
 u8 *state;
 u32 counter;

 state = parc4ctx->state;
 parc4ctx->x = 0;
 parc4ctx->y = 0;
 for (counter = 0; counter < 256; counter++)
  state[counter] = (u8)counter;
 keyindex = 0;
 stateindex = 0;
 for (counter = 0; counter < 256; counter++) {
  t = state[counter];
  stateindex = (stateindex + key[keyindex] + t) & 0xff;
  u = state[stateindex];
  state[stateindex] = (u8)t;
  state[counter] = (u8)u;
  if (++keyindex >= key_len)
   keyindex = 0;
 }
}
