
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_override_internal_txrate {int dummy; } ;
struct cw1200_common {int dummy; } ;


 int WSM_MIB_ID_OVERRIDE_INTERNAL_TX_RATE ;
 int wsm_write_mib (struct cw1200_common*,int ,struct wsm_override_internal_txrate*,int) ;

__attribute__((used)) static inline int wsm_set_override_internal_txrate(struct cw1200_common *priv,
         struct wsm_override_internal_txrate *arg)
{
 return wsm_write_mib(priv, WSM_MIB_ID_OVERRIDE_INTERNAL_TX_RATE,
    arg, sizeof(*arg));
}
