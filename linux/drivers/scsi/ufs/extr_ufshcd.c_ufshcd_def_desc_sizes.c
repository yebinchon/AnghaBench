
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hlth_desc; int geom_desc; int unit_desc; int conf_desc; int interc_desc; int pwr_desc; int dev_desc; } ;
struct ufs_hba {TYPE_1__ desc_size; } ;


 int QUERY_DESC_CONFIGURATION_DEF_SIZE ;
 int QUERY_DESC_DEVICE_DEF_SIZE ;
 int QUERY_DESC_GEOMETRY_DEF_SIZE ;
 int QUERY_DESC_HEALTH_DEF_SIZE ;
 int QUERY_DESC_INTERCONNECT_DEF_SIZE ;
 int QUERY_DESC_POWER_DEF_SIZE ;
 int QUERY_DESC_UNIT_DEF_SIZE ;

__attribute__((used)) static void ufshcd_def_desc_sizes(struct ufs_hba *hba)
{
 hba->desc_size.dev_desc = QUERY_DESC_DEVICE_DEF_SIZE;
 hba->desc_size.pwr_desc = QUERY_DESC_POWER_DEF_SIZE;
 hba->desc_size.interc_desc = QUERY_DESC_INTERCONNECT_DEF_SIZE;
 hba->desc_size.conf_desc = QUERY_DESC_CONFIGURATION_DEF_SIZE;
 hba->desc_size.unit_desc = QUERY_DESC_UNIT_DEF_SIZE;
 hba->desc_size.geom_desc = QUERY_DESC_GEOMETRY_DEF_SIZE;
 hba->desc_size.hlth_desc = QUERY_DESC_HEALTH_DEF_SIZE;
}
