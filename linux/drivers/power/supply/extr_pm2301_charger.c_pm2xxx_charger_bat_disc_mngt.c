
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm2xxx_charger {int dev; } ;


 int dev_dbg (int ,char*) ;

__attribute__((used)) static int pm2xxx_charger_bat_disc_mngt(struct pm2xxx_charger *pm2, int val)
{
 dev_dbg(pm2->dev, "battery disconnected\n");

 return 0;
}
