
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smem_state {int orphan; } ;


 int qcom_smem_state_put (struct qcom_smem_state*) ;

void qcom_smem_state_unregister(struct qcom_smem_state *state)
{
 state->orphan = 1;
 qcom_smem_state_put(state);
}
