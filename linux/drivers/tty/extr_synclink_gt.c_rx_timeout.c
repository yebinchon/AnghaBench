
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct slgt_info {int task; int lock; int pending_bh; int device_name; } ;


 int BH_RECEIVE ;
 int DBGINFO (char*) ;
 int bh_handler (int *) ;
 struct slgt_info* from_timer (int ,struct timer_list*,int ) ;
 struct slgt_info* info ;
 int rx_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rx_timeout(struct timer_list *t)
{
 struct slgt_info *info = from_timer(info, t, rx_timer);
 unsigned long flags;

 DBGINFO(("%s rx_timeout\n", info->device_name));
 spin_lock_irqsave(&info->lock, flags);
 info->pending_bh |= BH_RECEIVE;
 spin_unlock_irqrestore(&info->lock, flags);
 bh_handler(&info->task);
}
