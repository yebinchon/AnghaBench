
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct smsm_host {int ipc_bit; int ipc_offset; scalar_t__ ipc_regmap; } ;
struct qcom_smsm {size_t num_hosts; scalar_t__ subscription; struct smsm_host* hosts; int lock; scalar_t__ local_state; } ;


 int BIT (int ) ;
 size_t readl (scalar_t__) ;
 int regmap_write (scalar_t__,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;
 int writel (size_t,scalar_t__) ;

__attribute__((used)) static int smsm_update_bits(void *data, u32 mask, u32 value)
{
 struct qcom_smsm *smsm = data;
 struct smsm_host *hostp;
 unsigned long flags;
 u32 changes;
 u32 host;
 u32 orig;
 u32 val;

 spin_lock_irqsave(&smsm->lock, flags);


 val = orig = readl(smsm->local_state);
 val &= ~mask;
 val |= value;


 changes = val ^ orig;
 if (!changes) {
  spin_unlock_irqrestore(&smsm->lock, flags);
  goto done;
 }


 writel(val, smsm->local_state);
 spin_unlock_irqrestore(&smsm->lock, flags);


 wmb();


 for (host = 0; host < smsm->num_hosts; host++) {
  hostp = &smsm->hosts[host];

  val = readl(smsm->subscription + host);
  if (val & changes && hostp->ipc_regmap) {
   regmap_write(hostp->ipc_regmap,
         hostp->ipc_offset,
         BIT(hostp->ipc_bit));
  }
 }

done:
 return 0;
}
