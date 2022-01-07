
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_mib_association_mode {int dummy; } ;
struct cw1200_common {int dummy; } ;


 int WSM_MIB_ID_SET_ASSOCIATION_MODE ;
 int wsm_write_mib (struct cw1200_common*,int ,struct wsm_mib_association_mode*,int) ;

__attribute__((used)) static inline int wsm_set_association_mode(struct cw1200_common *priv,
        struct wsm_mib_association_mode *arg)
{
 return wsm_write_mib(priv, WSM_MIB_ID_SET_ASSOCIATION_MODE, arg,
        sizeof(*arg));
}
