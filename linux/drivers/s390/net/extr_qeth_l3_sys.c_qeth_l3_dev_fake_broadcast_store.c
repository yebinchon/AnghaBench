
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fake_broadcast; } ;
struct qeth_card {scalar_t__ state; int conf_mutex; TYPE_1__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ CARD_STATE_DOWN ;
 int EINVAL ;
 int EPERM ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,char**,int) ;

__attribute__((used)) static ssize_t qeth_l3_dev_fake_broadcast_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 char *tmp;
 int i, rc = 0;

 if (!card)
  return -EINVAL;

 mutex_lock(&card->conf_mutex);
 if (card->state != CARD_STATE_DOWN) {
  rc = -EPERM;
  goto out;
 }

 i = simple_strtoul(buf, &tmp, 16);
 if ((i == 0) || (i == 1))
  card->options.fake_broadcast = i;
 else
  rc = -EINVAL;
out:
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
