
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPC_OVL_ATTRIBUTES (int) ;
 int FEAT_ALPHA_FREE_ZORDER ;
 int REG_FLD_MOD (int ,int,int,int) ;
 int dss_feat_get_num_ovls () ;
 int dss_has_feature (int ) ;

__attribute__((used)) static void dispc_ovl_enable_zorder_planes(void)
{
 int i;

 if (!dss_has_feature(FEAT_ALPHA_FREE_ZORDER))
  return;

 for (i = 0; i < dss_feat_get_num_ovls(); i++)
  REG_FLD_MOD(DISPC_OVL_ATTRIBUTES(i), 1, 25, 25);
}
