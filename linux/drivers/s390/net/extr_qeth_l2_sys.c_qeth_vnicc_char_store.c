
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qeth_card {int conf_mutex; } ;
struct TYPE_2__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtobool (char const*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qeth_l2_vnicc_set_state (struct qeth_card*,int ,int) ;
 int qeth_l2_vnicc_sysfs_attr_to_char (int ) ;

__attribute__((used)) static ssize_t qeth_vnicc_char_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 bool state;
 u32 vnicc;
 int rc;

 if (!card)
  return -EINVAL;

 if (kstrtobool(buf, &state))
  return -EINVAL;

 vnicc = qeth_l2_vnicc_sysfs_attr_to_char(attr->attr.name);
 mutex_lock(&card->conf_mutex);
 rc = qeth_l2_vnicc_set_state(card, vnicc, state);
 mutex_unlock(&card->conf_mutex);

 return rc ? rc : count;
}
