
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ISL12026_REG_PWR ;
 int ISL12026_REG_PWR_BSW ;
 int ISL12026_REG_PWR_SBIB ;
 int dev_dbg (TYPE_1__*,char*,int) ;
 int dev_warn (TYPE_1__*,char*,int) ;
 int isl12026_read_reg (struct i2c_client*,int ) ;
 int isl12026_write_reg (struct i2c_client*,int ,int) ;
 int of_property_read_u32 (int ,char*,scalar_t__*) ;

__attribute__((used)) static void isl12026_force_power_modes(struct i2c_client *client)
{
 int ret;
 int pwr, requested_pwr;
 u32 bsw_val, sbib_val;
 bool set_bsw, set_sbib;






 ret = of_property_read_u32(client->dev.of_node,
       "isil,pwr-bsw", &bsw_val);
 set_bsw = (ret == 0);

 ret = of_property_read_u32(client->dev.of_node,
       "isil,pwr-sbib", &sbib_val);
 set_sbib = (ret == 0);


 if (!set_bsw && !set_sbib)
  return;

 pwr = isl12026_read_reg(client, ISL12026_REG_PWR);
 if (pwr < 0) {
  dev_warn(&client->dev, "Error: Failed to read PWR %d\n", pwr);
  return;
 }

 requested_pwr = pwr;

 if (set_bsw) {
  if (bsw_val)
   requested_pwr |= ISL12026_REG_PWR_BSW;
  else
   requested_pwr &= ~ISL12026_REG_PWR_BSW;
 }

 if (set_sbib) {
  if (sbib_val)
   requested_pwr |= ISL12026_REG_PWR_SBIB;
  else
   requested_pwr &= ~ISL12026_REG_PWR_SBIB;
 }

 if (pwr >= 0 && pwr != requested_pwr) {
  dev_dbg(&client->dev, "PWR: %02x\n", pwr);
  dev_dbg(&client->dev, "Updating PWR to: %02x\n", requested_pwr);
  isl12026_write_reg(client, ISL12026_REG_PWR, requested_pwr);
 }
}
