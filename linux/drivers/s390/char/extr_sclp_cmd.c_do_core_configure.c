
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int response_code; } ;
struct cpu_configure_sccb {TYPE_1__ header; } ;
typedef int sclp_cmdw_t ;


 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int SCLP_HAS_CPU_RECONFIG ;
 int SCLP_QUEUE_INTERVAL ;
 int kfree (struct cpu_configure_sccb*) ;
 struct cpu_configure_sccb* kzalloc (int,int) ;
 int pr_warn (char*,int ,int) ;
 int sclp_sync_request_timeout (int ,struct cpu_configure_sccb*,int ) ;

__attribute__((used)) static int do_core_configure(sclp_cmdw_t cmd)
{
 struct cpu_configure_sccb *sccb;
 int rc;

 if (!SCLP_HAS_CPU_RECONFIG)
  return -EOPNOTSUPP;




 sccb = kzalloc(sizeof(*sccb), GFP_KERNEL | GFP_DMA);
 if (!sccb)
  return -ENOMEM;
 sccb->header.length = sizeof(*sccb);
 rc = sclp_sync_request_timeout(cmd, sccb, SCLP_QUEUE_INTERVAL);
 if (rc)
  goto out;
 switch (sccb->header.response_code) {
 case 0x0020:
 case 0x0120:
  break;
 default:
  pr_warn("configure cpu failed (cmd=0x%08x, response=0x%04x)\n",
   cmd, sccb->header.response_code);
  rc = -EIO;
  break;
 }
out:
 kfree(sccb);
 return rc;
}
