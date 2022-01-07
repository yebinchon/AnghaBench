
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65217_bl {int is_enabled; int dev; int tps; } ;


 int TPS65217_PROTECT_NONE ;
 int TPS65217_REG_WLEDCTRL1 ;
 int TPS65217_WLEDCTRL1_ISINK_ENABLE ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int tps65217_clear_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int tps65217_bl_disable(struct tps65217_bl *tps65217_bl)
{
 int rc;

 rc = tps65217_clear_bits(tps65217_bl->tps,
    TPS65217_REG_WLEDCTRL1,
    TPS65217_WLEDCTRL1_ISINK_ENABLE,
    TPS65217_PROTECT_NONE);
 if (rc) {
  dev_err(tps65217_bl->dev,
   "failed to disable backlight: %d\n", rc);
  return rc;
 }

 tps65217_bl->is_enabled = 0;

 dev_dbg(tps65217_bl->dev, "backlight disabled\n");

 return 0;
}
