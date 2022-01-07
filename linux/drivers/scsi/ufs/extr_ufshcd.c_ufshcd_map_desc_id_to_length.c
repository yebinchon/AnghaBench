
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev_desc; int pwr_desc; int geom_desc; int conf_desc; int unit_desc; int interc_desc; int hlth_desc; } ;
struct ufs_hba {TYPE_1__ desc_size; } ;
typedef enum desc_idn { ____Placeholder_desc_idn } desc_idn ;


 int EINVAL ;
 int QUERY_DESC_MAX_SIZE ;

int ufshcd_map_desc_id_to_length(struct ufs_hba *hba,
 enum desc_idn desc_id, int *desc_len)
{
 switch (desc_id) {
 case 136:
  *desc_len = hba->desc_size.dev_desc;
  break;
 case 132:
  *desc_len = hba->desc_size.pwr_desc;
  break;
 case 135:
  *desc_len = hba->desc_size.geom_desc;
  break;
 case 137:
  *desc_len = hba->desc_size.conf_desc;
  break;
 case 128:
  *desc_len = hba->desc_size.unit_desc;
  break;
 case 133:
  *desc_len = hba->desc_size.interc_desc;
  break;
 case 129:
  *desc_len = QUERY_DESC_MAX_SIZE;
  break;
 case 134:
  *desc_len = hba->desc_size.hlth_desc;
  break;
 case 131:
 case 130:
  *desc_len = 0;
  break;
 default:
  *desc_len = 0;
  return -EINVAL;
 }
 return 0;
}
