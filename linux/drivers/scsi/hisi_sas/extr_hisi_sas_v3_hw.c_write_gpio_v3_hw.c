
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hisi_hba {int n_phy; struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;

 int SAS_GPIO_TX_0_1 ;
 int dev_err (struct device*,char*,int,...) ;
 int hisi_sas_write32 (struct hisi_hba*,int ,int ) ;

__attribute__((used)) static int write_gpio_v3_hw(struct hisi_hba *hisi_hba, u8 reg_type,
   u8 reg_index, u8 reg_count, u8 *write_data)
{
 struct device *dev = hisi_hba->dev;
 u32 *data = (u32 *)write_data;
 int i;

 switch (reg_type) {
 case 128:
  if ((reg_index + reg_count) > ((hisi_hba->n_phy + 3) / 4)) {
   dev_err(dev, "write gpio: invalid reg range[%d, %d]\n",
    reg_index, reg_index + reg_count - 1);
   return -EINVAL;
  }

  for (i = 0; i < reg_count; i++)
   hisi_sas_write32(hisi_hba,
      SAS_GPIO_TX_0_1 + (reg_index + i) * 4,
      data[i]);
  break;
 default:
  dev_err(dev, "write gpio: unsupported or bad reg type %d\n",
   reg_type);
  return -EINVAL;
 }

 return 0;
}
