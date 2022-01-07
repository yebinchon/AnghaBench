
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ sclp_activation_state ;
 scalar_t__ sclp_activation_state_activating ;
 scalar_t__ sclp_activation_state_active ;
 scalar_t__ sclp_activation_state_inactive ;
 int sclp_init_mask (int) ;
 int sclp_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
sclp_reactivate(void)
{
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&sclp_lock, flags);

 if (sclp_activation_state != sclp_activation_state_inactive) {
  spin_unlock_irqrestore(&sclp_lock, flags);
  return -EINVAL;
 }
 sclp_activation_state = sclp_activation_state_activating;
 spin_unlock_irqrestore(&sclp_lock, flags);
 rc = sclp_init_mask(1);
 spin_lock_irqsave(&sclp_lock, flags);
 if (rc == 0)
  sclp_activation_state = sclp_activation_state_active;
 else
  sclp_activation_state = sclp_activation_state_inactive;
 spin_unlock_irqrestore(&sclp_lock, flags);
 return rc;
}
