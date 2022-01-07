
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_p2p_ps_modeinfo {int dummy; } ;
struct cw1200_common {int dummy; } ;


 int WSM_MIB_ID_P2P_PS_MODE_INFO ;
 int wsm_read_mib (struct cw1200_common*,int ,struct wsm_p2p_ps_modeinfo*,int) ;

__attribute__((used)) static inline int wsm_get_p2p_ps_modeinfo(struct cw1200_common *priv,
       struct wsm_p2p_ps_modeinfo *mi)
{
 return wsm_read_mib(priv, WSM_MIB_ID_P2P_PS_MODE_INFO,
       mi, sizeof(*mi));
}
