
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qla27xx_image_status {int dummy; } ;
struct TYPE_2__ {void* npiv_config_2_3; void* npiv_config_0_1; void* vpd_nvram; void* board_config; } ;
struct active_regions {TYPE_1__ aux; } ;


 int QLA28XX_AUX_IMG_BOARD_CONFIG ;
 int QLA28XX_AUX_IMG_NPIV_CONFIG_0_1 ;
 int QLA28XX_AUX_IMG_NPIV_CONFIG_2_3 ;
 int QLA28XX_AUX_IMG_VPD_NVRAM ;
 void* qla28xx_component_bitmask (struct qla27xx_image_status*,int ) ;

__attribute__((used)) static void
qla28xx_component_status(
    struct active_regions *active_regions, struct qla27xx_image_status *aux)
{
 active_regions->aux.board_config =
     qla28xx_component_bitmask(aux, QLA28XX_AUX_IMG_BOARD_CONFIG);

 active_regions->aux.vpd_nvram =
     qla28xx_component_bitmask(aux, QLA28XX_AUX_IMG_VPD_NVRAM);

 active_regions->aux.npiv_config_0_1 =
     qla28xx_component_bitmask(aux, QLA28XX_AUX_IMG_NPIV_CONFIG_0_1);

 active_regions->aux.npiv_config_2_3 =
     qla28xx_component_bitmask(aux, QLA28XX_AUX_IMG_NPIV_CONFIG_2_3);
}
