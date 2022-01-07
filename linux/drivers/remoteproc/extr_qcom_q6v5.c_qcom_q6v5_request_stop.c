
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_q6v5 {int stop_bit; int state; int stop_done; } ;


 int BIT (int ) ;
 int ETIMEDOUT ;
 int HZ ;
 int qcom_smem_state_update_bits (int ,int ,int ) ;
 int wait_for_completion_timeout (int *,int) ;

int qcom_q6v5_request_stop(struct qcom_q6v5 *q6v5)
{
 int ret;

 qcom_smem_state_update_bits(q6v5->state,
        BIT(q6v5->stop_bit), BIT(q6v5->stop_bit));

 ret = wait_for_completion_timeout(&q6v5->stop_done, 5 * HZ);

 qcom_smem_state_update_bits(q6v5->state, BIT(q6v5->stop_bit), 0);

 return ret == 0 ? -ETIMEDOUT : 0;
}
