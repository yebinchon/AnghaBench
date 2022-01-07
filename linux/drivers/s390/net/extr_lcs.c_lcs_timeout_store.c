
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {unsigned int lancmd_timeout; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct lcs_card* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int ,unsigned int*) ;

__attribute__((used)) static ssize_t
lcs_timeout_store (struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
        struct lcs_card *card;
 unsigned int value;
 int rc;

 card = dev_get_drvdata(dev);

        if (!card)
                return 0;

 rc = kstrtouint(buf, 0, &value);
 if (rc)
  return -EINVAL;

        card->lancmd_timeout = value;

        return count;

}
