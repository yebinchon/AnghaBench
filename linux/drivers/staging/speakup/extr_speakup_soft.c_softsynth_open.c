
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int spinlock; } ;
struct TYPE_3__ {int alive; } ;


 int EBUSY ;
 TYPE_2__ speakup_info ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__ synth_soft ;

__attribute__((used)) static int softsynth_open(struct inode *inode, struct file *fp)
{
 unsigned long flags;


 spin_lock_irqsave(&speakup_info.spinlock, flags);
 if (synth_soft.alive) {
  spin_unlock_irqrestore(&speakup_info.spinlock, flags);
  return -EBUSY;
 }
 synth_soft.alive = 1;
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 return 0;
}
