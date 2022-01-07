
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_keep_alive_period {int period; } ;
struct cw1200_common {int dummy; } ;
typedef int arg ;


 int WSM_MIB_ID_KEEP_ALIVE_PERIOD ;
 int __cpu_to_le16 (int) ;
 int wsm_write_mib (struct cw1200_common*,int ,struct wsm_keep_alive_period*,int) ;

__attribute__((used)) static inline int wsm_keep_alive_period(struct cw1200_common *priv,
     int period)
{
 struct wsm_keep_alive_period arg = {
  .period = __cpu_to_le16(period),
 };
 return wsm_write_mib(priv, WSM_MIB_ID_KEEP_ALIVE_PERIOD,
   &arg, sizeof(arg));
}
