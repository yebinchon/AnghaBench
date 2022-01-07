
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* feat; int core_clk_rate; } ;
struct TYPE_3__ {scalar_t__ mstandby_workaround; } ;


 int DISPC_CONFIG ;
 int DISPC_DIVISOR ;
 int DISPC_MSTANDBY_CTRL ;
 int FEAT_CORE_CLK_DIV ;
 int FEAT_FUNCGATED ;
 int FEAT_MFLAG ;
 int FLD_MOD (int ,int,int,int) ;
 int OMAP_DSS_LOAD_FRAME_ONLY ;
 int REG_FLD_MOD (int ,int,int,int) ;
 TYPE_2__ dispc ;
 int dispc_configure_burst_sizes () ;
 int dispc_fclk_rate () ;
 int dispc_init_fifos () ;
 int dispc_init_mflag () ;
 int dispc_ovl_enable_zorder_planes () ;
 int dispc_read_reg (int ) ;
 int dispc_set_loadmode (int ) ;
 int dispc_setup_color_conv_coef () ;
 int dispc_write_reg (int ,int ) ;
 scalar_t__ dss_has_feature (int ) ;

__attribute__((used)) static void _omap_dispc_initial_config(void)
{
 u32 l;


 if (dss_has_feature(FEAT_CORE_CLK_DIV)) {
  l = dispc_read_reg(DISPC_DIVISOR);

  l = FLD_MOD(l, 1, 0, 0);
  l = FLD_MOD(l, 1, 23, 16);
  dispc_write_reg(DISPC_DIVISOR, l);

  dispc.core_clk_rate = dispc_fclk_rate();
 }


 if (dss_has_feature(FEAT_FUNCGATED))
  REG_FLD_MOD(DISPC_CONFIG, 1, 9, 9);

 dispc_setup_color_conv_coef();

 dispc_set_loadmode(OMAP_DSS_LOAD_FRAME_ONLY);

 dispc_init_fifos();

 dispc_configure_burst_sizes();

 dispc_ovl_enable_zorder_planes();

 if (dispc.feat->mstandby_workaround)
  REG_FLD_MOD(DISPC_MSTANDBY_CTRL, 1, 0, 0);

 if (dss_has_feature(FEAT_MFLAG))
  dispc_init_mflag();
}
