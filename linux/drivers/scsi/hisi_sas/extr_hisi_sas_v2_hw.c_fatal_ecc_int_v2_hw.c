
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SAS_ECC_INTR ;
 int SAS_ECC_INTR_MSK ;
 int hisi_sas_read32 (struct hisi_hba*,int ) ;
 int hisi_sas_write32 (struct hisi_hba*,int ,int) ;
 int multi_bit_ecc_error_process_v2_hw (struct hisi_hba*,int) ;
 int one_bit_ecc_error_process_v2_hw (struct hisi_hba*,int) ;

__attribute__((used)) static irqreturn_t fatal_ecc_int_v2_hw(int irq_no, void *p)
{
 struct hisi_hba *hisi_hba = p;
 u32 irq_value, irq_msk;

 irq_msk = hisi_sas_read32(hisi_hba, SAS_ECC_INTR_MSK);
 hisi_sas_write32(hisi_hba, SAS_ECC_INTR_MSK, irq_msk | 0xffffffff);

 irq_value = hisi_sas_read32(hisi_hba, SAS_ECC_INTR);
 if (irq_value) {
  one_bit_ecc_error_process_v2_hw(hisi_hba, irq_value);
  multi_bit_ecc_error_process_v2_hw(hisi_hba, irq_value);
 }

 hisi_sas_write32(hisi_hba, SAS_ECC_INTR, irq_value);
 hisi_sas_write32(hisi_hba, SAS_ECC_INTR_MSK, irq_msk);

 return IRQ_HANDLED;
}
