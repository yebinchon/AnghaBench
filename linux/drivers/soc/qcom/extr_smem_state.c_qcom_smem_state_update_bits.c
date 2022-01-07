
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* update_bits ) (int ,int ,int ) ;} ;
struct qcom_smem_state {int priv; TYPE_1__ ops; scalar_t__ orphan; } ;


 int ENOTSUPP ;
 int ENXIO ;
 int stub1 (int ,int ,int ) ;

int qcom_smem_state_update_bits(struct qcom_smem_state *state,
    u32 mask,
    u32 value)
{
 if (state->orphan)
  return -ENXIO;

 if (!state->ops.update_bits)
  return -ENOTSUPP;

 return state->ops.update_bits(state->priv, mask, value);
}
