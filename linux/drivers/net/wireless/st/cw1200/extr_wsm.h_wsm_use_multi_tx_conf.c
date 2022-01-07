
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int dummy; } ;
typedef int arg ;
typedef int __le32 ;


 int WSM_MIB_USE_MULTI_TX_CONF ;
 int __cpu_to_le32 (int) ;
 int wsm_write_mib (struct cw1200_common*,int ,int *,int) ;

__attribute__((used)) static inline int wsm_use_multi_tx_conf(struct cw1200_common *priv,
     bool enabled)
{
 __le32 arg = enabled ? __cpu_to_le32(1) : 0;

 return wsm_write_mib(priv, WSM_MIB_USE_MULTI_TX_CONF,
   &arg, sizeof(arg));
}
