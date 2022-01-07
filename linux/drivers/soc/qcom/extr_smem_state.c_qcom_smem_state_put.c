
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smem_state {int refcount; } ;


 int kref_put (int *,int ) ;
 int list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qcom_smem_state_release ;

void qcom_smem_state_put(struct qcom_smem_state *state)
{
 mutex_lock(&list_lock);
 kref_put(&state->refcount, qcom_smem_state_release);
 mutex_unlock(&list_lock);
}
