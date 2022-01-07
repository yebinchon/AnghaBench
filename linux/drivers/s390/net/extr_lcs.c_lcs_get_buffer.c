
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_channel {int ccwdev; } ;
struct lcs_buffer {int dummy; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 struct lcs_buffer* __lcs_get_buffer (struct lcs_channel*) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int trace ;

__attribute__((used)) static struct lcs_buffer *
lcs_get_buffer(struct lcs_channel *channel)
{
 struct lcs_buffer *buffer;
 unsigned long flags;

 LCS_DBF_TEXT(5, trace, "getbuff");
 spin_lock_irqsave(get_ccwdev_lock(channel->ccwdev), flags);
 buffer = __lcs_get_buffer(channel);
 spin_unlock_irqrestore(get_ccwdev_lock(channel->ccwdev), flags);
 return buffer;
}
