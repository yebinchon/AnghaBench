
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq25890_init_data {void* boostf; void* ilim_en; } ;
struct bq25890_device {int dev; struct bq25890_init_data init_data; } ;


 int bq25890_fw_read_u32_props (struct bq25890_device*) ;
 void* device_property_read_bool (int ,char*) ;

__attribute__((used)) static int bq25890_fw_probe(struct bq25890_device *bq)
{
 int ret;
 struct bq25890_init_data *init = &bq->init_data;

 ret = bq25890_fw_read_u32_props(bq);
 if (ret < 0)
  return ret;

 init->ilim_en = device_property_read_bool(bq->dev, "ti,use-ilim-pin");
 init->boostf = device_property_read_bool(bq->dev, "ti,boost-low-freq");

 return 0;
}
