
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ulong ;
typedef scalar_t__ s32 ;
struct TYPE_7__ {TYPE_1__* host; } ;
typedef TYPE_2__ adpt_hba ;
struct TYPE_6__ {int host_lock; } ;


 scalar_t__ adpt_i2o_lct_get (TYPE_2__*) ;
 scalar_t__ adpt_i2o_reparse_lct (TYPE_2__*) ;
 int spin_lock_irqsave (int ,int ) ;
 int spin_unlock_irqrestore (int ,int ) ;

__attribute__((used)) static s32 adpt_rescan(adpt_hba* pHba)
{
 s32 rcode;
 ulong flags = 0;

 if(pHba->host)
  spin_lock_irqsave(pHba->host->host_lock, flags);
 if ((rcode=adpt_i2o_lct_get(pHba)) < 0)
  goto out;
 if ((rcode=adpt_i2o_reparse_lct(pHba)) < 0)
  goto out;
 rcode = 0;
out: if(pHba->host)
  spin_unlock_irqrestore(pHba->host->host_lock, flags);
 return rcode;
}
