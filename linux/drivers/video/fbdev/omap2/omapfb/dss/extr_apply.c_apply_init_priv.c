
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int global_alpha; int zorder; int rotation_type; int color_mode; } ;
struct ovl_priv_data {TYPE_1__ info; TYPE_1__ user_info; } ;
struct TYPE_6__ {int lck_div; int pck_div; } ;
struct TYPE_7__ {int video_port_width; TYPE_2__ clock_info; } ;
struct mgr_priv_data {TYPE_3__ lcd_config; } ;
struct TYPE_8__ {struct mgr_priv_data* mgr_priv_data_array; struct ovl_priv_data* ovl_priv_data_array; } ;


 int FEAT_ALPHA_FREE_ZORDER ;
 size_t OMAP_DSS_CHANNEL_DIGIT ;
 int OMAP_DSS_COLOR_RGB16 ;
 int OMAP_DSS_ROT_DMA ;
 int data_lock ;
 TYPE_4__ dss_data ;
 int dss_feat_get_num_ovls () ;
 int dss_has_feature (int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void apply_init_priv(void)
{
 const int num_ovls = dss_feat_get_num_ovls();
 struct mgr_priv_data *mp;
 int i;

 spin_lock_init(&data_lock);

 for (i = 0; i < num_ovls; ++i) {
  struct ovl_priv_data *op;

  op = &dss_data.ovl_priv_data_array[i];

  op->info.color_mode = OMAP_DSS_COLOR_RGB16;
  op->info.rotation_type = OMAP_DSS_ROT_DMA;

  op->info.global_alpha = 255;

  switch (i) {
  case 0:
   op->info.zorder = 0;
   break;
  case 1:
   op->info.zorder =
    dss_has_feature(FEAT_ALPHA_FREE_ZORDER) ? 3 : 0;
   break;
  case 2:
   op->info.zorder =
    dss_has_feature(FEAT_ALPHA_FREE_ZORDER) ? 2 : 0;
   break;
  case 3:
   op->info.zorder =
    dss_has_feature(FEAT_ALPHA_FREE_ZORDER) ? 1 : 0;
   break;
  }

  op->user_info = op->info;
 }





 mp = &dss_data.mgr_priv_data_array[OMAP_DSS_CHANNEL_DIGIT];

 mp->lcd_config.video_port_width = 24;
 mp->lcd_config.clock_info.lck_div = 1;
 mp->lcd_config.clock_info.pck_div = 1;
}
