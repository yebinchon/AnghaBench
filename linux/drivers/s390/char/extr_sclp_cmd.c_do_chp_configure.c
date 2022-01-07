
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int response_code; } ;
struct chp_cfg_sccb {TYPE_1__ header; } ;
typedef int sclp_cmdw_t ;


 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int SCLP_HAS_CHP_RECONFIG ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int) ;
 int pr_warn (char*,int ,int) ;
 int sclp_sync_request (int ,struct chp_cfg_sccb*) ;

__attribute__((used)) static int do_chp_configure(sclp_cmdw_t cmd)
{
 struct chp_cfg_sccb *sccb;
 int rc;

 if (!SCLP_HAS_CHP_RECONFIG)
  return -EOPNOTSUPP;

 sccb = (struct chp_cfg_sccb *) get_zeroed_page(GFP_KERNEL | GFP_DMA);
 if (!sccb)
  return -ENOMEM;
 sccb->header.length = sizeof(*sccb);
 rc = sclp_sync_request(cmd, sccb);
 if (rc)
  goto out;
 switch (sccb->header.response_code) {
 case 0x0020:
 case 0x0120:
 case 0x0440:
 case 0x0450:
  break;
 default:
  pr_warn("configure channel-path failed (cmd=0x%08x, response=0x%04x)\n",
   cmd, sccb->header.response_code);
  rc = -EIO;
  break;
 }
out:
 free_page((unsigned long) sccb);
 return rc;
}
