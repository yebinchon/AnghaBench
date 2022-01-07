
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipr_ioa_cfg {int probe_done; TYPE_1__* host; scalar_t__ needs_hard_reset; TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int host_lock; } ;


 int ENTER ;
 int IPR_SHUTDOWN_NONE ;
 int LEAVE ;
 int _ipr_initiate_ioa_reset (struct ipr_ioa_cfg*,int ,int ) ;
 int dev_dbg (int *,char*,struct ipr_ioa_cfg*) ;
 int ipr_initiate_ioa_reset (struct ipr_ioa_cfg*,int ) ;
 int ipr_reset_enable_ioa ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ipr_probe_ioa_part2(struct ipr_ioa_cfg *ioa_cfg)
{
 int rc = 0;
 unsigned long host_lock_flags = 0;

 ENTER;
 spin_lock_irqsave(ioa_cfg->host->host_lock, host_lock_flags);
 dev_dbg(&ioa_cfg->pdev->dev, "ioa_cfg adx: 0x%p\n", ioa_cfg);
 ioa_cfg->probe_done = 1;
 if (ioa_cfg->needs_hard_reset) {
  ioa_cfg->needs_hard_reset = 0;
  ipr_initiate_ioa_reset(ioa_cfg, IPR_SHUTDOWN_NONE);
 } else
  _ipr_initiate_ioa_reset(ioa_cfg, ipr_reset_enable_ioa,
     IPR_SHUTDOWN_NONE);
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, host_lock_flags);

 LEAVE;
 return rc;
}
