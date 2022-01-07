
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcs_card {int portno; TYPE_1__* dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef int s16 ;
struct TYPE_2__ {int dev_port; } ;


 size_t EINVAL ;
 struct lcs_card* dev_get_drvdata (struct device*) ;
 int kstrtos16 (char const*,int ,int *) ;

__attribute__((used)) static ssize_t
lcs_portno_store (struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
        struct lcs_card *card;
 int rc;
 s16 value;

 card = dev_get_drvdata(dev);

        if (!card)
                return 0;

 rc = kstrtos16(buf, 0, &value);
 if (rc)
  return -EINVAL;

        card->portno = value;
 if (card->dev)
  card->dev->dev_port = card->portno;

        return count;

}
