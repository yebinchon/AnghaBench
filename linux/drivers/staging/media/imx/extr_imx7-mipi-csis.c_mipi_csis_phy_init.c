
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_state {int mipi_phy_regulator; int dev; } ;


 int devm_regulator_get (int ,char*) ;
 int regulator_set_voltage (int ,int,int) ;

__attribute__((used)) static int mipi_csis_phy_init(struct csi_state *state)
{
 state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");

 return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
         1000000);
}
