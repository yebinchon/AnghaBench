
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3fwrn5_i2c_phy {int mode; int mutex; scalar_t__ irq_skip; int ndev; } ;
typedef int irqreturn_t ;


 int EREMOTEIO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;



 int WARN_ON_ONCE (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s3fwrn5_i2c_read (struct s3fwrn5_i2c_phy*) ;

__attribute__((used)) static irqreturn_t s3fwrn5_i2c_irq_thread_fn(int irq, void *phy_id)
{
 struct s3fwrn5_i2c_phy *phy = phy_id;
 int ret = 0;

 if (!phy || !phy->ndev) {
  WARN_ON_ONCE(1);
  return IRQ_NONE;
 }

 mutex_lock(&phy->mutex);

 if (phy->irq_skip)
  goto out;

 switch (phy->mode) {
 case 128:
 case 129:
  ret = s3fwrn5_i2c_read(phy);
  break;
 case 130:
  ret = -EREMOTEIO;
  break;
 }

out:
 mutex_unlock(&phy->mutex);

 return IRQ_HANDLED;
}
