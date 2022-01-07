
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {void* vindpm; void* vovp; void* iilimit; void* iterm; void* vbat; void* ichg; } ;
struct bq24257_device {int iilimit_autoset_enable; TYPE_1__ init_data; int dev; } ;


 int BQ24257_ICHG_MAP_SIZE ;
 int BQ24257_IILIMIT_MAP_SIZE ;
 int BQ24257_ITERM_MAP_SIZE ;
 int BQ24257_VBAT_MAP_SIZE ;
 int BQ24257_VINDPM_MAP_SIZE ;
 int BQ24257_VOVP_MAP_SIZE ;
 void* IILIMIT_500 ;
 void* VINDPM_4360 ;
 void* VOVP_6500 ;
 void* bq24257_find_idx (int ,int ,int ) ;
 int bq24257_ichg_map ;
 int bq24257_iilimit_map ;
 int bq24257_iterm_map ;
 int bq24257_vbat_map ;
 int bq24257_vindpm_map ;
 int bq24257_vovp_map ;
 int device_property_read_u32 (int ,char*,int *) ;

__attribute__((used)) static int bq24257_fw_probe(struct bq24257_device *bq)
{
 int ret;
 u32 property;


 ret = device_property_read_u32(bq->dev, "ti,charge-current", &property);
 if (ret < 0)
  return ret;

 bq->init_data.ichg = bq24257_find_idx(property, bq24257_ichg_map,
           BQ24257_ICHG_MAP_SIZE);

 ret = device_property_read_u32(bq->dev, "ti,battery-regulation-voltage",
           &property);
 if (ret < 0)
  return ret;

 bq->init_data.vbat = bq24257_find_idx(property, bq24257_vbat_map,
           BQ24257_VBAT_MAP_SIZE);

 ret = device_property_read_u32(bq->dev, "ti,termination-current",
           &property);
 if (ret < 0)
  return ret;

 bq->init_data.iterm = bq24257_find_idx(property, bq24257_iterm_map,
            BQ24257_ITERM_MAP_SIZE);


 ret = device_property_read_u32(bq->dev, "ti,current-limit",
           &property);
 if (ret < 0) {
  bq->iilimit_autoset_enable = 1;






  bq->init_data.iilimit = IILIMIT_500;
 } else
  bq->init_data.iilimit =
    bq24257_find_idx(property,
       bq24257_iilimit_map,
       BQ24257_IILIMIT_MAP_SIZE);

 ret = device_property_read_u32(bq->dev, "ti,ovp-voltage",
           &property);
 if (ret < 0)
  bq->init_data.vovp = VOVP_6500;
 else
  bq->init_data.vovp = bq24257_find_idx(property,
            bq24257_vovp_map,
            BQ24257_VOVP_MAP_SIZE);

 ret = device_property_read_u32(bq->dev, "ti,in-dpm-voltage",
           &property);
 if (ret < 0)
  bq->init_data.vindpm = VINDPM_4360;
 else
  bq->init_data.vindpm =
    bq24257_find_idx(property,
       bq24257_vindpm_map,
       BQ24257_VINDPM_MAP_SIZE);

 return 0;
}
