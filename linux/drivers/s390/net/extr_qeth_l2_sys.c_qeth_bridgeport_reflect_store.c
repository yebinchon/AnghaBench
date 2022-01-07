
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ role; int reflect_promisc; int reflect_promisc_primary; } ;
struct TYPE_4__ {TYPE_1__ sbp; } ;
struct qeth_card {int conf_mutex; TYPE_2__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ QETH_SBP_ROLE_NONE ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ qeth_l2_vnicc_is_in_use (struct qeth_card*) ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static ssize_t qeth_bridgeport_reflect_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 int enable, primary;
 int rc = 0;

 if (!card)
  return -EINVAL;

 if (sysfs_streq(buf, "none")) {
  enable = 0;
  primary = 0;
 } else if (sysfs_streq(buf, "primary")) {
  enable = 1;
  primary = 1;
 } else if (sysfs_streq(buf, "secondary")) {
  enable = 1;
  primary = 0;
 } else
  return -EINVAL;

 mutex_lock(&card->conf_mutex);

 if (qeth_l2_vnicc_is_in_use(card))
  rc = -EBUSY;
 else if (card->options.sbp.role != QETH_SBP_ROLE_NONE)
  rc = -EPERM;
 else {
  card->options.sbp.reflect_promisc = enable;
  card->options.sbp.reflect_promisc_primary = primary;
  rc = 0;
 }

 mutex_unlock(&card->conf_mutex);

 return rc ? rc : count;
}
