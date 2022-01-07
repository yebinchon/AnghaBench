
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hostnotification; } ;
struct TYPE_4__ {TYPE_1__ sbp; } ;
struct qeth_card {int conf_mutex; TYPE_2__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int kstrtobool (char const*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qeth_bridgeport_an_set (struct qeth_card*,int) ;
 scalar_t__ qeth_card_hw_is_reachable (struct qeth_card*) ;
 scalar_t__ qeth_l2_vnicc_is_in_use (struct qeth_card*) ;

__attribute__((used)) static ssize_t qeth_bridgeport_hostnotification_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 bool enable;
 int rc;

 if (!card)
  return -EINVAL;

 rc = kstrtobool(buf, &enable);
 if (rc)
  return rc;

 mutex_lock(&card->conf_mutex);

 if (qeth_l2_vnicc_is_in_use(card))
  rc = -EBUSY;
 else if (qeth_card_hw_is_reachable(card)) {
  rc = qeth_bridgeport_an_set(card, enable);
  if (!rc)
   card->options.sbp.hostnotification = enable;
 } else
  card->options.sbp.hostnotification = enable;

 mutex_unlock(&card->conf_mutex);

 return rc ? rc : count;
}
