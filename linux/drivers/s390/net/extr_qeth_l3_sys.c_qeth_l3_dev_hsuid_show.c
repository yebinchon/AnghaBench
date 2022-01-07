
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp_hsuid ;
struct TYPE_2__ {int hsuid; } ;
struct qeth_card {TYPE_1__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBCASC (char*,int) ;
 int EINVAL ;
 int EPERM ;
 int IS_IQD (struct qeth_card*) ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int memcpy (char*,int ,int) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t qeth_l3_dev_hsuid_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 char tmp_hsuid[9];

 if (!card)
  return -EINVAL;

 if (!IS_IQD(card))
  return -EPERM;

 memcpy(tmp_hsuid, card->options.hsuid, sizeof(tmp_hsuid));
 EBCASC(tmp_hsuid, 8);
 return sprintf(buf, "%s\n", tmp_hsuid);
}
