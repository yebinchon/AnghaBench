
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_usb {int dev; } ;


 int AB8500_BIT_WD_CTRL_ENABLE ;
 int AB8500_BIT_WD_CTRL_KICK ;
 int AB8500_MAIN_WD_CTRL_REG ;
 int AB8500_SYS_CTRL2_BLOCK ;
 int AB8500_WD_KICK_DELAY_US ;
 int AB8500_WD_V11_DISABLE_DELAY_US ;
 int abx500_set_register_interruptible (int ,int ,int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static void ab8500_usb_wd_workaround(struct ab8500_usb *ab)
{
 abx500_set_register_interruptible(ab->dev,
  AB8500_SYS_CTRL2_BLOCK,
  AB8500_MAIN_WD_CTRL_REG,
  AB8500_BIT_WD_CTRL_ENABLE);

 udelay(AB8500_WD_KICK_DELAY_US);

 abx500_set_register_interruptible(ab->dev,
  AB8500_SYS_CTRL2_BLOCK,
  AB8500_MAIN_WD_CTRL_REG,
  (AB8500_BIT_WD_CTRL_ENABLE
  | AB8500_BIT_WD_CTRL_KICK));

 udelay(AB8500_WD_V11_DISABLE_DELAY_US);

 abx500_set_register_interruptible(ab->dev,
  AB8500_SYS_CTRL2_BLOCK,
  AB8500_MAIN_WD_CTRL_REG,
  0);
}
