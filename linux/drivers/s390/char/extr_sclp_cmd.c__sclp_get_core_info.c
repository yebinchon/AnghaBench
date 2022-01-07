
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sclp_core_info {int dummy; } ;
struct TYPE_2__ {int length; int response_code; } ;
struct read_cpu_info_sccb {TYPE_1__ header; } ;


 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int SCLP_CMDW_READ_CPU_INFO ;
 int SCLP_HAS_CPU_INFO ;
 int SCLP_QUEUE_INTERVAL ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int) ;
 int pr_warn (char*,int) ;
 int sclp_fill_core_info (struct sclp_core_info*,struct read_cpu_info_sccb*) ;
 int sclp_sync_request_timeout (int ,struct read_cpu_info_sccb*,int ) ;

int _sclp_get_core_info(struct sclp_core_info *info)
{
 int rc;
 struct read_cpu_info_sccb *sccb;

 if (!SCLP_HAS_CPU_INFO)
  return -EOPNOTSUPP;
 sccb = (void *) get_zeroed_page(GFP_KERNEL | GFP_DMA);
 if (!sccb)
  return -ENOMEM;
 sccb->header.length = sizeof(*sccb);
 rc = sclp_sync_request_timeout(SCLP_CMDW_READ_CPU_INFO, sccb,
           SCLP_QUEUE_INTERVAL);
 if (rc)
  goto out;
 if (sccb->header.response_code != 0x0010) {
  pr_warn("readcpuinfo failed (response=0x%04x)\n",
   sccb->header.response_code);
  rc = -EIO;
  goto out;
 }
 sclp_fill_core_info(info, sccb);
out:
 free_page((unsigned long) sccb);
 return rc;
}
