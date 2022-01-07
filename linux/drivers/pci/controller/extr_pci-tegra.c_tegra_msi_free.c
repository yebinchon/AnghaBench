
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* dev; } ;
struct tegra_msi {int lock; int used; TYPE_1__ chip; } ;
struct device {int dummy; } ;


 int clear_bit (unsigned long,int ) ;
 int dev_err (struct device*,char*,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (unsigned long,int ) ;

__attribute__((used)) static void tegra_msi_free(struct tegra_msi *chip, unsigned long irq)
{
 struct device *dev = chip->chip.dev;

 mutex_lock(&chip->lock);

 if (!test_bit(irq, chip->used))
  dev_err(dev, "trying to free unused MSI#%lu\n", irq);
 else
  clear_bit(irq, chip->used);

 mutex_unlock(&chip->lock);
}
