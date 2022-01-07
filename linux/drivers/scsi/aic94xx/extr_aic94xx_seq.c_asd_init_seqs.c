
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {int pcidev; } ;


 int SAS_RAZOR_SEQUENCER_FW_FILE ;
 int asd_printk (char*,int ,...) ;
 int asd_request_firmware (struct asd_ha_struct*) ;
 int asd_seq_download_seqs (struct asd_ha_struct*) ;
 int asd_seq_setup_seqs (struct asd_ha_struct*) ;
 int pci_name (int ) ;

int asd_init_seqs(struct asd_ha_struct *asd_ha)
{
 int err;

 err = asd_request_firmware(asd_ha);

 if (err) {
  asd_printk("Failed to load sequencer firmware file %s, error %d\n",
      SAS_RAZOR_SEQUENCER_FW_FILE, err);
  return err;
 }

 err = asd_seq_download_seqs(asd_ha);
 if (err) {
  asd_printk("couldn't download sequencers for %s\n",
      pci_name(asd_ha->pcidev));
  return err;
 }

 asd_seq_setup_seqs(asd_ha);

 return 0;
}
