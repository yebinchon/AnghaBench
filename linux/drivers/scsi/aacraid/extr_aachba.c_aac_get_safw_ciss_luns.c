
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct aac_srb {int* cdb; int flags; } ;
struct aac_srb_unit {struct aac_srb srb; } ;
struct aac_dev {struct aac_ciss_phys_luns_resp* safw_phys_luns; } ;
struct aac_ciss_phys_luns_resp {int resp_flag; } ;
struct _ciss_lun {int dummy; } ;


 int AAC_MAX_TARGETS ;
 int CISS_REPORT_PHYSICAL_LUNS ;
 int ENOMEM ;
 int ENOMSG ;
 int GFP_KERNEL ;
 int SRB_DataIn ;
 int aac_send_safw_bmic_cmd (struct aac_dev*,struct aac_srb_unit*,struct aac_ciss_phys_luns_resp*,int) ;
 int cpu_to_le32 (int ) ;
 int kfree (struct aac_ciss_phys_luns_resp*) ;
 struct aac_ciss_phys_luns_resp* kmalloc (int,int ) ;
 int memset (struct aac_srb_unit*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aac_get_safw_ciss_luns(struct aac_dev *dev)
{
 int rcode = -ENOMEM;
 int datasize;
 struct aac_srb *srbcmd;
 struct aac_srb_unit srbu;
 struct aac_ciss_phys_luns_resp *phys_luns;

 datasize = sizeof(struct aac_ciss_phys_luns_resp) +
  (AAC_MAX_TARGETS - 1) * sizeof(struct _ciss_lun);
 phys_luns = kmalloc(datasize, GFP_KERNEL);
 if (phys_luns == ((void*)0))
  goto out;

 memset(&srbu, 0, sizeof(struct aac_srb_unit));

 srbcmd = &srbu.srb;
 srbcmd->flags = cpu_to_le32(SRB_DataIn);
 srbcmd->cdb[0] = CISS_REPORT_PHYSICAL_LUNS;
 srbcmd->cdb[1] = 2;
 srbcmd->cdb[8] = (u8)(datasize >> 8);
 srbcmd->cdb[9] = (u8)(datasize);

 rcode = aac_send_safw_bmic_cmd(dev, &srbu, phys_luns, datasize);
 if (unlikely(rcode < 0))
  goto mem_free_all;

 if (phys_luns->resp_flag != 2) {
  rcode = -ENOMSG;
  goto mem_free_all;
 }

 dev->safw_phys_luns = phys_luns;

out:
 return rcode;
mem_free_all:
 kfree(phys_luns);
 goto out;
}
