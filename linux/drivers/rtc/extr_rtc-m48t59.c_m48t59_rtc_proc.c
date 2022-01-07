
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct seq_file {int dummy; } ;
struct m48t59_private {int lock; } ;
struct m48t59_plat_data {int dummy; } ;
struct device {int dummy; } ;


 int M48T59_FLAGS ;
 int M48T59_FLAGS_BF ;
 int M48T59_READ (int ) ;
 struct m48t59_private* dev_get_drvdata (struct device*) ;
 struct m48t59_plat_data* dev_get_platdata (struct device*) ;
 int seq_printf (struct seq_file*,char*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int m48t59_rtc_proc(struct device *dev, struct seq_file *seq)
{
 struct m48t59_plat_data *pdata = dev_get_platdata(dev);
 struct m48t59_private *m48t59 = dev_get_drvdata(dev);
 unsigned long flags;
 u8 val;

 spin_lock_irqsave(&m48t59->lock, flags);
 val = M48T59_READ(M48T59_FLAGS);
 spin_unlock_irqrestore(&m48t59->lock, flags);

 seq_printf(seq, "battery\t\t: %s\n",
   (val & M48T59_FLAGS_BF) ? "low" : "normal");
 return 0;
}
