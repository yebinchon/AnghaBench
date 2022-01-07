
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct hpsa_scsi_dev_t {void* sas_address; } ;
struct ctlr_info {void* sas_address; } ;
struct bmic_sense_subsystem_info {int primary_world_wide_id; } ;


 int GFP_KERNEL ;
 void* get_unaligned_be64 (int ) ;
 int hpsa_bmic_sense_subsystem_information (struct ctlr_info*,unsigned char*,int ,struct bmic_sense_subsystem_info*,int) ;
 void* hpsa_get_sas_address_from_report_physical (struct ctlr_info*,unsigned char*) ;
 scalar_t__ is_hba_lunid (unsigned char*) ;
 int kfree (struct bmic_sense_subsystem_info*) ;
 struct bmic_sense_subsystem_info* kzalloc (int,int ) ;

__attribute__((used)) static void hpsa_get_sas_address(struct ctlr_info *h, unsigned char *scsi3addr,
     struct hpsa_scsi_dev_t *dev)
{
 int rc;
 u64 sa = 0;

 if (is_hba_lunid(scsi3addr)) {
  struct bmic_sense_subsystem_info *ssi;

  ssi = kzalloc(sizeof(*ssi), GFP_KERNEL);
  if (!ssi)
   return;

  rc = hpsa_bmic_sense_subsystem_information(h,
     scsi3addr, 0, ssi, sizeof(*ssi));
  if (rc == 0) {
   sa = get_unaligned_be64(ssi->primary_world_wide_id);
   h->sas_address = sa;
  }

  kfree(ssi);
 } else
  sa = hpsa_get_sas_address_from_report_physical(h, scsi3addr);

 dev->sas_address = sa;
}
