
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sclp_chp_info {int configured; int standby; int recognized; } ;
struct TYPE_2__ {int length; int response_code; } ;
struct chp_info_sccb {int configured; int standby; int recognized; TYPE_1__ header; } ;


 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int SCLP_CHP_INFO_MASK_SIZE ;
 int SCLP_CMDW_READ_CHPATH_INFORMATION ;
 int SCLP_HAS_CHP_INFO ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int) ;
 int memcpy (int ,int ,int ) ;
 int pr_warn (char*,int) ;
 int sclp_sync_request (int ,struct chp_info_sccb*) ;

int sclp_chp_read_info(struct sclp_chp_info *info)
{
 struct chp_info_sccb *sccb;
 int rc;

 if (!SCLP_HAS_CHP_INFO)
  return -EOPNOTSUPP;

 sccb = (struct chp_info_sccb *) get_zeroed_page(GFP_KERNEL | GFP_DMA);
 if (!sccb)
  return -ENOMEM;
 sccb->header.length = sizeof(*sccb);
 rc = sclp_sync_request(SCLP_CMDW_READ_CHPATH_INFORMATION, sccb);
 if (rc)
  goto out;
 if (sccb->header.response_code != 0x0010) {
  pr_warn("read channel-path info failed (response=0x%04x)\n",
   sccb->header.response_code);
  rc = -EIO;
  goto out;
 }
 memcpy(info->recognized, sccb->recognized, SCLP_CHP_INFO_MASK_SIZE);
 memcpy(info->standby, sccb->standby, SCLP_CHP_INFO_MASK_SIZE);
 memcpy(info->configured, sccb->configured, SCLP_CHP_INFO_MASK_SIZE);
out:
 free_page((unsigned long) sccb);
 return rc;
}
