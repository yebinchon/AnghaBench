
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int response_code; int length; } ;
struct pci_cfg_sccb {TYPE_1__ header; int aid; int atype; } ;
typedef int sclp_cmdw_t ;


 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int SCLP_ATYPE_PCI ;
 int SCLP_HAS_PCI_RECONFIG ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int) ;
 int pr_warn (char*,int ,int) ;
 int sclp_sync_request (int ,struct pci_cfg_sccb*) ;

__attribute__((used)) static int do_pci_configure(sclp_cmdw_t cmd, u32 fid)
{
 struct pci_cfg_sccb *sccb;
 int rc;

 if (!SCLP_HAS_PCI_RECONFIG)
  return -EOPNOTSUPP;

 sccb = (struct pci_cfg_sccb *) get_zeroed_page(GFP_KERNEL | GFP_DMA);
 if (!sccb)
  return -ENOMEM;

 sccb->header.length = PAGE_SIZE;
 sccb->atype = SCLP_ATYPE_PCI;
 sccb->aid = fid;
 rc = sclp_sync_request(cmd, sccb);
 if (rc)
  goto out;
 switch (sccb->header.response_code) {
 case 0x0020:
 case 0x0120:
  break;
 default:
  pr_warn("configure PCI I/O adapter failed: cmd=0x%08x  response=0x%04x\n",
   cmd, sccb->header.response_code);
  rc = -EIO;
  break;
 }
out:
 free_page((unsigned long) sccb);
 return rc;
}
