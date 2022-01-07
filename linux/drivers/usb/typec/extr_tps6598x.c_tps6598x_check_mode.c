
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6598x {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;




 int TPS_REG_MODE ;
 int dev_err (int ,char*,char*) ;
 int dev_warn (int ,char*) ;
 int match_string (int ,int ,char*) ;
 int modes ;
 int tps6598x_read32 (struct tps6598x*,int ,void*) ;

__attribute__((used)) static int tps6598x_check_mode(struct tps6598x *tps)
{
 char mode[5] = { };
 int ret;

 ret = tps6598x_read32(tps, TPS_REG_MODE, (void *)mode);
 if (ret)
  return ret;

 switch (match_string(modes, ARRAY_SIZE(modes), mode)) {
 case 131:
  return 0;
 case 129:
  dev_warn(tps->dev, "dead-battery condition\n");
  return 0;
 case 130:
 case 128:
 default:
  dev_err(tps->dev, "controller in unsupported mode \"%s\"\n",
   mode);
  break;
 }

 return -ENODEV;
}
