
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77620_pctrl_info {int dev; int rmap; } ;


 unsigned int MAX77620_FPS_SRC_MASK ;
 unsigned int MAX77620_FPS_SRC_SHIFT ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int,unsigned int*) ;

__attribute__((used)) static int max77620_get_default_fps(struct max77620_pctrl_info *mpci,
        int addr, int *fps)
{
 unsigned int val;
 int ret;

 ret = regmap_read(mpci->rmap, addr, &val);
 if (ret < 0) {
  dev_err(mpci->dev, "Reg PUE_GPIO read failed: %d\n", ret);
  return ret;
 }
 *fps = (val & MAX77620_FPS_SRC_MASK) >> MAX77620_FPS_SRC_SHIFT;

 return 0;
}
