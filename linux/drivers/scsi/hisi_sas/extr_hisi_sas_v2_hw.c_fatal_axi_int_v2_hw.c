
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_sas_hw_error {int irq_msk; int shift; int msk; scalar_t__ msg; int reg; struct hisi_sas_hw_error* sub; } ;
struct hisi_sas_device {int completion; } ;
struct hisi_hba {struct hisi_sas_device* devices; int rst_work; int wq; struct device* dev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int ARRAY_SIZE (struct hisi_sas_hw_error*) ;
 int BIT (int ) ;
 int ENT_INT_SRC3 ;
 int ENT_INT_SRC3_ITC_INT_OFF ;
 int ENT_INT_SRC_MSK3 ;
 int IRQ_HANDLED ;
 int ITCT_CLR ;
 int ITCT_DEV_MSK ;
 int complete (int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,scalar_t__,int) ;
 struct hisi_sas_hw_error* fatal_axi_errors ;
 int hisi_sas_read32 (struct hisi_hba*,int ) ;
 int hisi_sas_write32 (struct hisi_hba*,int ,int) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t fatal_axi_int_v2_hw(int irq_no, void *p)
{
 struct hisi_hba *hisi_hba = p;
 u32 irq_value, irq_msk, err_value;
 struct device *dev = hisi_hba->dev;
 const struct hisi_sas_hw_error *axi_error;
 int i;

 irq_msk = hisi_sas_read32(hisi_hba, ENT_INT_SRC_MSK3);
 hisi_sas_write32(hisi_hba, ENT_INT_SRC_MSK3, irq_msk | 0xfffffffe);

 irq_value = hisi_sas_read32(hisi_hba, ENT_INT_SRC3);

 for (i = 0; i < ARRAY_SIZE(fatal_axi_errors); i++) {
  axi_error = &fatal_axi_errors[i];
  if (!(irq_value & axi_error->irq_msk))
   continue;

  hisi_sas_write32(hisi_hba, ENT_INT_SRC3,
     1 << axi_error->shift);
  if (axi_error->sub) {
   const struct hisi_sas_hw_error *sub = axi_error->sub;

   err_value = hisi_sas_read32(hisi_hba, axi_error->reg);
   for (; sub->msk || sub->msg; sub++) {
    if (!(err_value & sub->msk))
     continue;
    dev_err(dev, "%s (0x%x) found!\n",
     sub->msg, irq_value);
    queue_work(hisi_hba->wq, &hisi_hba->rst_work);
   }
  } else {
   dev_err(dev, "%s (0x%x) found!\n",
    axi_error->msg, irq_value);
   queue_work(hisi_hba->wq, &hisi_hba->rst_work);
  }
 }

 if (irq_value & BIT(ENT_INT_SRC3_ITC_INT_OFF)) {
  u32 reg_val = hisi_sas_read32(hisi_hba, ITCT_CLR);
  u32 dev_id = reg_val & ITCT_DEV_MSK;
  struct hisi_sas_device *sas_dev = &hisi_hba->devices[dev_id];

  hisi_sas_write32(hisi_hba, ITCT_CLR, 0);
  dev_dbg(dev, "clear ITCT ok\n");
  complete(sas_dev->completion);
 }

 hisi_sas_write32(hisi_hba, ENT_INT_SRC3, irq_value);
 hisi_sas_write32(hisi_hba, ENT_INT_SRC_MSK3, irq_msk);

 return IRQ_HANDLED;
}
