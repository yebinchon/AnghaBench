
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {struct device* dev; } ;
struct device {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_HANDLE (struct device*) ;
 int AXI_CFG ;
 int DLVRY_QUEUE_ENABLE ;
 int EINVAL ;
 int EIO ;
 int acpi_evaluate_object (scalar_t__,char*,int *,int *) ;
 int dev_err (struct device*,char*,...) ;
 int hisi_sas_read32_poll_timeout (int ,int ,int,int,int) ;
 int hisi_sas_stop_phys (struct hisi_hba*) ;
 int hisi_sas_write32 (struct hisi_hba*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int reset_hw_v3_hw(struct hisi_hba *hisi_hba)
{
 struct device *dev = hisi_hba->dev;
 int ret;
 u32 val;

 hisi_sas_write32(hisi_hba, DLVRY_QUEUE_ENABLE, 0);


 hisi_sas_stop_phys(hisi_hba);
 udelay(50);


 ret = hisi_sas_read32_poll_timeout(AXI_CFG, val, !val,
        20000, 1000000);
 if (ret) {
  dev_err(dev, "axi bus is not idle, ret = %d!\n", ret);
  return -EIO;
 }

 if (ACPI_HANDLE(dev)) {
  acpi_status s;

  s = acpi_evaluate_object(ACPI_HANDLE(dev), "_RST", ((void*)0), ((void*)0));
  if (ACPI_FAILURE(s)) {
   dev_err(dev, "Reset failed\n");
   return -EIO;
  }
 } else {
  dev_err(dev, "no reset method!\n");
  return -EINVAL;
 }

 return 0;
}
