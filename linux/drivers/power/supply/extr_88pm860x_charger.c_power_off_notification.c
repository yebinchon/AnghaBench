
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_charger_info {int dev; } ;


 int dev_dbg (int ,char*) ;

__attribute__((used)) static void power_off_notification(struct pm860x_charger_info *info)
{
 dev_dbg(info->dev, "Power-off notification!\n");
}
