
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_mib_multicast_filter {int dummy; } ;
struct cw1200_common {int dummy; } ;


 int WSM_MIB_ID_DOT11_GROUP_ADDRESSES_TABLE ;
 int wsm_write_mib (struct cw1200_common*,int ,struct wsm_mib_multicast_filter*,int) ;

__attribute__((used)) static inline int wsm_set_multicast_filter(struct cw1200_common *priv,
        struct wsm_mib_multicast_filter *fp)
{
 return wsm_write_mib(priv, WSM_MIB_ID_DOT11_GROUP_ADDRESSES_TABLE,
        fp, sizeof(*fp));
}
