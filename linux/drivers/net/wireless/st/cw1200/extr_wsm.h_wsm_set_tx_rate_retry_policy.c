
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_tx_rate_retry_policy {int dummy; } ;
struct wsm_set_tx_rate_retry_policy {int num; } ;
struct cw1200_common {int dummy; } ;


 int WSM_MIB_ID_SET_TX_RATE_RETRY_POLICY ;
 int wsm_write_mib (struct cw1200_common*,int ,struct wsm_set_tx_rate_retry_policy*,size_t) ;

__attribute__((used)) static inline int wsm_set_tx_rate_retry_policy(struct cw1200_common *priv,
    struct wsm_set_tx_rate_retry_policy *arg)
{
 size_t size = 4 + arg->num * sizeof(struct wsm_tx_rate_retry_policy);
 return wsm_write_mib(priv, WSM_MIB_ID_SET_TX_RATE_RETRY_POLICY, arg,
        size);
}
