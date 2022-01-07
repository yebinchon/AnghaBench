
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq24190_dev_info {int ss_reg; int dev; } ;


 int BQ24190_REG_SS ;
 int BQ24190_REG_VPRS ;



 int BQ24190_REG_VPRS_PN_MASK ;
 int BQ24190_REG_VPRS_PN_SHIFT ;
 int ENODEV ;
 int bq24190_read (struct bq24190_dev_info*,int ,int *) ;
 int bq24190_read_mask (struct bq24190_dev_info*,int ,int ,int ,int*) ;
 int bq24190_register_reset (struct bq24190_dev_info*) ;
 int bq24190_set_config (struct bq24190_dev_info*) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int bq24190_hw_init(struct bq24190_dev_info *bdi)
{
 u8 v;
 int ret;


 ret = bq24190_read_mask(bdi, BQ24190_REG_VPRS,
   BQ24190_REG_VPRS_PN_MASK,
   BQ24190_REG_VPRS_PN_SHIFT,
   &v);
 if (ret < 0)
  return ret;

 switch (v) {
 case 130:
 case 129:
 case 128:
  break;
 default:
  dev_err(bdi->dev, "Error unknown model: 0x%02x\n", v);
  return -ENODEV;
 }

 ret = bq24190_register_reset(bdi);
 if (ret < 0)
  return ret;

 ret = bq24190_set_config(bdi);
 if (ret < 0)
  return ret;

 return bq24190_read(bdi, BQ24190_REG_SS, &bdi->ss_reg);
}
