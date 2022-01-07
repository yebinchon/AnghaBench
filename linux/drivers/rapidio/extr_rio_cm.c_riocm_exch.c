
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_channel {int state; int lock; } ;
typedef enum rio_cm_state { ____Placeholder_rio_cm_state } rio_cm_state ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static enum rio_cm_state riocm_exch(struct rio_channel *ch,
        enum rio_cm_state exch)
{
 enum rio_cm_state old;

 spin_lock_bh(&ch->lock);
 old = ch->state;
 ch->state = exch;
 spin_unlock_bh(&ch->lock);
 return old;
}
