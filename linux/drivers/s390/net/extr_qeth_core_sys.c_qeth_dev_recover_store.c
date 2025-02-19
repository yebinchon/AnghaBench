
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EPERM ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int qeth_card_hw_is_reachable (struct qeth_card*) ;
 int qeth_schedule_recovery (struct qeth_card*) ;
 int simple_strtoul (char const*,char**,int) ;

__attribute__((used)) static ssize_t qeth_dev_recover_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 char *tmp;
 int i;

 if (!card)
  return -EINVAL;

 if (!qeth_card_hw_is_reachable(card))
  return -EPERM;

 i = simple_strtoul(buf, &tmp, 16);
 if (i == 1)
  qeth_schedule_recovery(card);

 return count;
}
