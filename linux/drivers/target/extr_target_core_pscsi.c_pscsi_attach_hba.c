
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_hba {int hba_id; struct pscsi_hba_virt* hba_ptr; } ;
struct pscsi_hba_virt {int phv_mode; int phv_host_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PHV_VIRTUAL_HOST_ID ;
 int PSCSI_VERSION ;
 int TARGET_CORE_VERSION ;
 struct pscsi_hba_virt* kzalloc (int,int ) ;
 int pr_debug (char*,int ,...) ;
 int pr_err (char*) ;

__attribute__((used)) static int pscsi_attach_hba(struct se_hba *hba, u32 host_id)
{
 struct pscsi_hba_virt *phv;

 phv = kzalloc(sizeof(struct pscsi_hba_virt), GFP_KERNEL);
 if (!phv) {
  pr_err("Unable to allocate struct pscsi_hba_virt\n");
  return -ENOMEM;
 }
 phv->phv_host_id = host_id;
 phv->phv_mode = PHV_VIRTUAL_HOST_ID;

 hba->hba_ptr = phv;

 pr_debug("CORE_HBA[%d] - TCM SCSI HBA Driver %s on"
  " Generic Target Core Stack %s\n", hba->hba_id,
  PSCSI_VERSION, TARGET_CORE_VERSION);
 pr_debug("CORE_HBA[%d] - Attached SCSI HBA to Generic\n",
        hba->hba_id);

 return 0;
}
