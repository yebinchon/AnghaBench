
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qeth_card {int conf_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int kstrtou32 (char const*,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qeth_l2_vnicc_set_timeout (struct qeth_card*,int ) ;

__attribute__((used)) static ssize_t qeth_vnicc_timeout_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 u32 timeout;
 int rc;

 if (!card)
  return -EINVAL;

 rc = kstrtou32(buf, 10, &timeout);
 if (rc)
  return rc;

 mutex_lock(&card->conf_mutex);
 rc = qeth_l2_vnicc_set_timeout(card, timeout);
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
