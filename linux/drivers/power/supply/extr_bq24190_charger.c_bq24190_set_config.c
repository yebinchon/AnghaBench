
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq24190_dev_info {int watchdog; int sys_min; int iprechg; int iterm; } ;


 int BQ24190_REG_CTTC ;
 int BQ24190_REG_CTTC_WATCHDOG_MASK ;
 int BQ24190_REG_CTTC_WATCHDOG_SHIFT ;
 int BQ24190_REG_PCTCC ;
 int BQ24190_REG_PCTCC_IPRECHG_MASK ;
 int BQ24190_REG_PCTCC_IPRECHG_SHIFT ;
 int BQ24190_REG_PCTCC_ITERM_MASK ;
 int BQ24190_REG_PCTCC_ITERM_SHIFT ;
 int BQ24190_REG_POC ;
 int BQ24190_REG_POC_SYS_MIN_MASK ;
 int BQ24190_REG_POC_SYS_MIN_SHIFT ;
 int bq24190_read (struct bq24190_dev_info*,int ,int*) ;
 int bq24190_write (struct bq24190_dev_info*,int ,int) ;
 int bq24190_write_mask (struct bq24190_dev_info*,int ,int ,int ,int) ;

__attribute__((used)) static int bq24190_set_config(struct bq24190_dev_info *bdi)
{
 int ret;
 u8 v;

 ret = bq24190_read(bdi, BQ24190_REG_CTTC, &v);
 if (ret < 0)
  return ret;

 bdi->watchdog = ((v & BQ24190_REG_CTTC_WATCHDOG_MASK) >>
     BQ24190_REG_CTTC_WATCHDOG_SHIFT);
 v &= ~BQ24190_REG_CTTC_WATCHDOG_MASK;

 ret = bq24190_write(bdi, BQ24190_REG_CTTC, v);
 if (ret < 0)
  return ret;

 if (bdi->sys_min) {
  v = bdi->sys_min / 100 - 30;
  ret = bq24190_write_mask(bdi, BQ24190_REG_POC,
      BQ24190_REG_POC_SYS_MIN_MASK,
      BQ24190_REG_POC_SYS_MIN_SHIFT,
      v);
  if (ret < 0)
   return ret;
 }

 if (bdi->iprechg) {
  v = bdi->iprechg / 128 - 1;
  ret = bq24190_write_mask(bdi, BQ24190_REG_PCTCC,
      BQ24190_REG_PCTCC_IPRECHG_MASK,
      BQ24190_REG_PCTCC_IPRECHG_SHIFT,
      v);
  if (ret < 0)
   return ret;
 }

 if (bdi->iterm) {
  v = bdi->iterm / 128 - 1;
  ret = bq24190_write_mask(bdi, BQ24190_REG_PCTCC,
      BQ24190_REG_PCTCC_ITERM_MASK,
      BQ24190_REG_PCTCC_ITERM_SHIFT,
      v);
  if (ret < 0)
   return ret;
 }

 return 0;
}
