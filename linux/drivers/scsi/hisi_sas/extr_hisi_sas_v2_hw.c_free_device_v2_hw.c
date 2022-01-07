
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_sas_device {int sata_idx; int sas_device; struct hisi_hba* hisi_hba; } ;
struct hisi_hba {int sata_dev_bitmap; } ;


 int clear_bit (int ,int ) ;
 scalar_t__ dev_is_sata (int ) ;

__attribute__((used)) static void free_device_v2_hw(struct hisi_sas_device *sas_dev)
{
 struct hisi_hba *hisi_hba = sas_dev->hisi_hba;


 if (dev_is_sata(sas_dev->sas_device))
  clear_bit(sas_dev->sata_idx, hisi_hba->sata_dev_bitmap);
}
