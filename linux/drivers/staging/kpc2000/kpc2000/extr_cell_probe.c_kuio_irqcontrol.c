
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct uio_info {struct kpc_uio_device* priv; } ;
struct TYPE_2__ {int irq_base_num; } ;
struct kpc_uio_device {TYPE_1__ cte; struct kp2000_device* pcard; } ;
struct kp2000_device {int sem; scalar_t__ sysinfo_regs_base; } ;
typedef scalar_t__ s32 ;


 int BIT_ULL (int ) ;
 scalar_t__ REG_INTERRUPT_MASK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readq (scalar_t__) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static
int kuio_irqcontrol(struct uio_info *uioinfo, s32 irq_on)
{
 struct kpc_uio_device *kudev = uioinfo->priv;
 struct kp2000_device *pcard = kudev->pcard;
 u64 mask;

 mutex_lock(&pcard->sem);
 mask = readq(pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
 if (irq_on)
  mask &= ~(BIT_ULL(kudev->cte.irq_base_num));
 else
  mask |= BIT_ULL(kudev->cte.irq_base_num);
 writeq(mask, pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
 mutex_unlock(&pcard->sem);

 return 0;
}
