
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hba {TYPE_1__* vops; } ;
struct TYPE_2__ {void (* setup_xfer_req ) (struct ufs_hba*,int,int) ;} ;


 void stub1 (struct ufs_hba*,int,int) ;

__attribute__((used)) static inline void ufshcd_vops_setup_xfer_req(struct ufs_hba *hba, int tag,
     bool is_scsi_cmd)
{
 if (hba->vops && hba->vops->setup_xfer_req)
  return hba->vops->setup_xfer_req(hba, tag, is_scsi_cmd);
}
