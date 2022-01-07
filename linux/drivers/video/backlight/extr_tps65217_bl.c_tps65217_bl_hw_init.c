
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65217_bl_pdata {int isel; int fdim; } ;
struct tps65217_bl {int dev; int tps; } ;


 int EINVAL ;


 int TPS65217_PROTECT_NONE ;
 int TPS65217_REG_WLEDCTRL1 ;
 int TPS65217_WLEDCTRL1_FDIM_MASK ;
 int TPS65217_WLEDCTRL1_ISEL ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int tps65217_bl_disable (struct tps65217_bl*) ;
 int tps65217_clear_bits (int ,int ,int ,int ) ;
 int tps65217_set_bits (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int tps65217_bl_hw_init(struct tps65217_bl *tps65217_bl,
   struct tps65217_bl_pdata *pdata)
{
 int rc;

 rc = tps65217_bl_disable(tps65217_bl);
 if (rc)
  return rc;

 switch (pdata->isel) {
 case 129:

  rc = tps65217_clear_bits(tps65217_bl->tps,
     TPS65217_REG_WLEDCTRL1,
     TPS65217_WLEDCTRL1_ISEL,
     TPS65217_PROTECT_NONE);
  if (rc) {
   dev_err(tps65217_bl->dev,
    "failed to select ISET1 current level: %d)\n",
    rc);
   return rc;
  }

  dev_dbg(tps65217_bl->dev, "selected ISET1 current level\n");

  break;

 case 128:

  rc = tps65217_set_bits(tps65217_bl->tps, TPS65217_REG_WLEDCTRL1,
    TPS65217_WLEDCTRL1_ISEL,
    TPS65217_WLEDCTRL1_ISEL, TPS65217_PROTECT_NONE);
  if (rc) {
   dev_err(tps65217_bl->dev,
    "failed to select ISET2 current level: %d\n",
    rc);
   return rc;
  }

  dev_dbg(tps65217_bl->dev, "selected ISET2 current level\n");

  break;

 default:
  dev_err(tps65217_bl->dev,
   "invalid value for current level: %d\n", pdata->isel);
  return -EINVAL;
 }


 rc = tps65217_set_bits(tps65217_bl->tps,
   TPS65217_REG_WLEDCTRL1,
   TPS65217_WLEDCTRL1_FDIM_MASK,
   pdata->fdim,
   TPS65217_PROTECT_NONE);
 if (rc) {
  dev_err(tps65217_bl->dev,
   "failed to select PWM dimming frequency: %d\n",
   rc);
  return rc;
 }

 return 0;
}
