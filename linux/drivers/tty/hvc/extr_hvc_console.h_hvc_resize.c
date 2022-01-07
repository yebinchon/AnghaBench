
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int dummy; } ;
struct hvc_struct {int lock; } ;


 int __hvc_resize (struct hvc_struct*,struct winsize) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void hvc_resize(struct hvc_struct *hp, struct winsize ws)
{
 unsigned long flags;

 spin_lock_irqsave(&hp->lock, flags);
 __hvc_resize(hp, ws);
 spin_unlock_irqrestore(&hp->lock, flags);
}
