
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hisi_hba {int n_phy; int ctrl_reset_sts_reg; scalar_t__ ctrl; scalar_t__ ctrl_clock_ena_reg; scalar_t__ ctrl_reset_reg; struct device* dev; } ;
struct device {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_HANDLE (struct device*) ;
 int AXI_CFG ;
 int DMA_RX_STATUS ;
 scalar_t__ DMA_RX_STATUS_BUSY_MSK ;
 int DMA_TX_STATUS ;
 scalar_t__ DMA_TX_STATUS_BUSY_MSK ;
 int EINVAL ;
 int EIO ;
 int PHY_CTRL ;
 scalar_t__ PHY_CTRL_RESET_MSK ;
 scalar_t__ RESET_VALUE ;
 int acpi_evaluate_object (scalar_t__,char*,int *,int *) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,scalar_t__) ;
 scalar_t__ hisi_sas_read32 (struct hisi_hba*,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int regmap_read (scalar_t__,int ,scalar_t__*) ;
 int regmap_write (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int reset_hw_v1_hw(struct hisi_hba *hisi_hba)
{
 int i;
 unsigned long end_time;
 u32 val;
 struct device *dev = hisi_hba->dev;

 for (i = 0; i < hisi_hba->n_phy; i++) {
  u32 phy_ctrl = hisi_sas_phy_read32(hisi_hba, i, PHY_CTRL);

  phy_ctrl |= PHY_CTRL_RESET_MSK;
  hisi_sas_phy_write32(hisi_hba, i, PHY_CTRL, phy_ctrl);
 }
 msleep(1);


 for (i = 0; i < hisi_hba->n_phy; i++) {
  u32 dma_tx_status, dma_rx_status;

  end_time = jiffies + msecs_to_jiffies(1000);

  while (1) {
   dma_tx_status = hisi_sas_phy_read32(hisi_hba, i,
           DMA_TX_STATUS);
   dma_rx_status = hisi_sas_phy_read32(hisi_hba, i,
           DMA_RX_STATUS);

   if (!(dma_tx_status & DMA_TX_STATUS_BUSY_MSK) &&
    !(dma_rx_status & DMA_RX_STATUS_BUSY_MSK))
    break;

   msleep(20);
   if (time_after(jiffies, end_time))
    return -EIO;
  }
 }


 end_time = jiffies + msecs_to_jiffies(1000);
 while (1) {
  u32 axi_status =
   hisi_sas_read32(hisi_hba, AXI_CFG);

  if (axi_status == 0)
   break;

  msleep(20);
  if (time_after(jiffies, end_time))
   return -EIO;
 }

 if (ACPI_HANDLE(dev)) {
  acpi_status s;

  s = acpi_evaluate_object(ACPI_HANDLE(dev), "_RST", ((void*)0), ((void*)0));
  if (ACPI_FAILURE(s)) {
   dev_err(dev, "Reset failed\n");
   return -EIO;
  }
 } else if (hisi_hba->ctrl) {


  regmap_write(hisi_hba->ctrl, hisi_hba->ctrl_reset_reg,
        RESET_VALUE);
  regmap_write(hisi_hba->ctrl, hisi_hba->ctrl_clock_ena_reg + 4,
        RESET_VALUE);
  msleep(1);
  regmap_read(hisi_hba->ctrl, hisi_hba->ctrl_reset_sts_reg, &val);
  if (RESET_VALUE != (val & RESET_VALUE)) {
   dev_err(dev, "Reset failed\n");
   return -EIO;
  }



  regmap_write(hisi_hba->ctrl, hisi_hba->ctrl_reset_reg + 4,
        RESET_VALUE);
  regmap_write(hisi_hba->ctrl, hisi_hba->ctrl_clock_ena_reg,
        RESET_VALUE);
  msleep(1);
  regmap_read(hisi_hba->ctrl, hisi_hba->ctrl_reset_sts_reg, &val);
  if (val & RESET_VALUE) {
   dev_err(dev, "De-reset failed\n");
   return -EIO;
  }
 } else {
  dev_warn(dev, "no reset method\n");
  return -EINVAL;
 }

 return 0;
}
