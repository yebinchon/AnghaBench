
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_tx_state {int residue; } ;



__attribute__((used)) static inline void dma_set_residue(struct dma_tx_state *state, u32 residue)
{
 if (state)
  state->residue = residue;
}
