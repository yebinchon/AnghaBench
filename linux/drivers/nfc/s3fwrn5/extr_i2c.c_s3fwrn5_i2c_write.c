
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct s3fwrn5_i2c_phy {int irq_skip; int mutex; int i2c_dev; } ;


 int EREMOTEIO ;
 int i2c_master_send (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int s3fwrn5_i2c_write(void *phy_id, struct sk_buff *skb)
{
 struct s3fwrn5_i2c_phy *phy = phy_id;
 int ret;

 mutex_lock(&phy->mutex);

 phy->irq_skip = 0;

 ret = i2c_master_send(phy->i2c_dev, skb->data, skb->len);
 if (ret == -EREMOTEIO) {

  usleep_range(110000, 120000);
  ret = i2c_master_send(phy->i2c_dev, skb->data, skb->len);
 }

 mutex_unlock(&phy->mutex);

 if (ret < 0)
  return ret;

 if (ret != skb->len)
  return -EREMOTEIO;

 return 0;
}
