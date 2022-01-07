
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_mdm6600 {TYPE_1__* cmd_gpios; } ;
struct TYPE_2__ {int info; int desc; } ;


 int DECLARE_BITMAP (int*,int ) ;
 int PHY_MDM6600_NR_CMD_LINES ;
 int gpiod_set_array_value_cansleep (int ,int ,int ,int*) ;
 int* values ;

__attribute__((used)) static void phy_mdm6600_cmd(struct phy_mdm6600 *ddata, int val)
{
 DECLARE_BITMAP(values, PHY_MDM6600_NR_CMD_LINES);

 values[0] = val;

 gpiod_set_array_value_cansleep(PHY_MDM6600_NR_CMD_LINES,
           ddata->cmd_gpios->desc,
           ddata->cmd_gpios->info, values);
}
