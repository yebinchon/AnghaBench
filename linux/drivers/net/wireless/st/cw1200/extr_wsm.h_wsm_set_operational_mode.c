
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
struct wsm_operational_mode {scalar_t__ perform_ant_diversity; scalar_t__ disable_more_flag_usage; int power_mode; } ;
struct cw1200_common {int dummy; } ;


 int BIT (int) ;
 int WSM_MIB_ID_OPERATIONAL_POWER_MODE ;
 int wsm_write_mib (struct cw1200_common*,int ,int *,int) ;

__attribute__((used)) static inline int wsm_set_operational_mode(struct cw1200_common *priv,
     const struct wsm_operational_mode *arg)
{
 u8 val = arg->power_mode;
 if (arg->disable_more_flag_usage)
  val |= BIT(4);
 if (arg->perform_ant_diversity)
  val |= BIT(5);
 return wsm_write_mib(priv, WSM_MIB_ID_OPERATIONAL_POWER_MODE, &val,
        sizeof(val));
}
