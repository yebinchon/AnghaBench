
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct cw1200_common {int dummy; } ;
typedef int __le32 ;


 int WSM_MIB_ID_DOT11_CURRENT_TX_POWER_LEVEL ;
 int __cpu_to_le32 (int) ;
 int wsm_write_mib (struct cw1200_common*,int ,int *,int) ;

__attribute__((used)) static inline int wsm_set_output_power(struct cw1200_common *priv,
           int power_level)
{
 __le32 val = __cpu_to_le32(power_level);
 return wsm_write_mib(priv, WSM_MIB_ID_DOT11_CURRENT_TX_POWER_LEVEL,
        &val, sizeof(val));
}
