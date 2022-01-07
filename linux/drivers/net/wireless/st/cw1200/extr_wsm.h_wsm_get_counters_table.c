
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_mib_counters_table {int dummy; } ;
struct cw1200_common {int dummy; } ;


 int WSM_MIB_ID_COUNTERS_TABLE ;
 int wsm_read_mib (struct cw1200_common*,int ,struct wsm_mib_counters_table*,int) ;

__attribute__((used)) static inline int wsm_get_counters_table(struct cw1200_common *priv,
      struct wsm_mib_counters_table *arg)
{
 return wsm_read_mib(priv, WSM_MIB_ID_COUNTERS_TABLE,
       arg, sizeof(*arg));
}
