
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct m48t59_private {int lock; } ;
struct m48t59_plat_data {int dummy; } ;
typedef size_t ssize_t ;


 int M48T59_READ (size_t) ;
 struct m48t59_plat_data* dev_get_platdata (struct device*) ;
 struct m48t59_private* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int m48t59_nvram_read(void *priv, unsigned int offset, void *val,
        size_t size)
{
 struct platform_device *pdev = priv;
 struct device *dev = &pdev->dev;
 struct m48t59_plat_data *pdata = dev_get_platdata(&pdev->dev);
 struct m48t59_private *m48t59 = platform_get_drvdata(pdev);
 ssize_t cnt = 0;
 unsigned long flags;
 u8 *buf = val;

 spin_lock_irqsave(&m48t59->lock, flags);

 for (; cnt < size; cnt++)
  *buf++ = M48T59_READ(cnt);

 spin_unlock_irqrestore(&m48t59->lock, flags);

 return 0;
}
