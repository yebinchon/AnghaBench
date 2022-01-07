
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slg51000 {int dev; int regmap; } ;


 unsigned int SLG51000_FLT_OVER_TEMP_MASK ;
 unsigned int SLG51000_FLT_POR_MASK ;
 unsigned int SLG51000_FLT_POWER_SEQ_CRASH_REQ_MASK ;
 unsigned int SLG51000_FLT_RST_MASK ;
 int SLG51000_SYSCTL_FAULT_LOG1 ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static void slg51000_clear_fault_log(struct slg51000 *chip)
{
 unsigned int val = 0;
 int ret = 0;

 ret = regmap_read(chip->regmap, SLG51000_SYSCTL_FAULT_LOG1, &val);
 if (ret < 0) {
  dev_err(chip->dev, "Failed to read Fault log register\n");
  return;
 }

 if (val & SLG51000_FLT_OVER_TEMP_MASK)
  dev_dbg(chip->dev, "Fault log: FLT_OVER_TEMP\n");
 if (val & SLG51000_FLT_POWER_SEQ_CRASH_REQ_MASK)
  dev_dbg(chip->dev, "Fault log: FLT_POWER_SEQ_CRASH_REQ\n");
 if (val & SLG51000_FLT_RST_MASK)
  dev_dbg(chip->dev, "Fault log: FLT_RST\n");
 if (val & SLG51000_FLT_POR_MASK)
  dev_dbg(chip->dev, "Fault log: FLT_POR\n");
}
