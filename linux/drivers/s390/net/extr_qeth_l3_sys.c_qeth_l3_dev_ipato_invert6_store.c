
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int invert6; } ;
struct qeth_card {int conf_mutex; int ip_lock; TYPE_1__ ipato; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtobool (char const*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qeth_l3_update_ipato (struct qeth_card*) ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static ssize_t qeth_l3_dev_ipato_invert6_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 bool invert;
 int rc = 0;

 if (!card)
  return -EINVAL;

 mutex_lock(&card->conf_mutex);
 if (sysfs_streq(buf, "toggle")) {
  invert = !card->ipato.invert6;
 } else if (kstrtobool(buf, &invert)) {
  rc = -EINVAL;
  goto out;
 }

 if (card->ipato.invert6 != invert) {
  card->ipato.invert6 = invert;
  mutex_lock(&card->ip_lock);
  qeth_l3_update_ipato(card);
  mutex_unlock(&card->ip_lock);
 }
out:
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
