
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cw1200_common {int dummy; } ;


 int ETH_ALEN ;
 int WSM_MIB_ID_DOT11_STATION_ID ;
 int wsm_read_mib (struct cw1200_common*,int ,int *,int ) ;

__attribute__((used)) static inline int wsm_get_station_id(struct cw1200_common *priv, u8 *mac)
{
 return wsm_read_mib(priv, WSM_MIB_ID_DOT11_STATION_ID, mac, ETH_ALEN);
}
