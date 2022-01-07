
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thermal_cooling_device {struct tegra_soctherm* devdata; } ;
struct tegra_soctherm {scalar_t__ regs; } ;


 scalar_t__ REG_GET_MASK (int ,int ) ;
 scalar_t__ THROT_STATUS ;
 int THROT_STATUS_STATE_MASK ;
 int readl (scalar_t__) ;

__attribute__((used)) static int throt_get_cdev_cur_state(struct thermal_cooling_device *cdev,
        unsigned long *cur_state)
{
 struct tegra_soctherm *ts = cdev->devdata;
 u32 r;

 r = readl(ts->regs + THROT_STATUS);
 if (REG_GET_MASK(r, THROT_STATUS_STATE_MASK))
  *cur_state = 1;
 else
  *cur_state = 0;

 return 0;
}
