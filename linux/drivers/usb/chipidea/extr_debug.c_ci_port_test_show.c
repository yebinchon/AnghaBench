
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct ci_hdrc* private; } ;
struct ci_hdrc {int dev; int lock; } ;


 unsigned int hw_port_test_get (struct ci_hdrc*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int seq_printf (struct seq_file*,char*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ci_port_test_show(struct seq_file *s, void *data)
{
 struct ci_hdrc *ci = s->private;
 unsigned long flags;
 unsigned mode;

 pm_runtime_get_sync(ci->dev);
 spin_lock_irqsave(&ci->lock, flags);
 mode = hw_port_test_get(ci);
 spin_unlock_irqrestore(&ci->lock, flags);
 pm_runtime_put_sync(ci->dev);

 seq_printf(s, "mode = %u\n", mode);

 return 0;
}
