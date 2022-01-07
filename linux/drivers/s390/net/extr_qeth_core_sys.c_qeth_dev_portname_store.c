
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {TYPE_1__* gdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int dev; } ;


 struct qeth_card* dev_get_drvdata (struct device*) ;
 int dev_warn_once (int *,char*) ;

__attribute__((used)) static ssize_t qeth_dev_portname_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);

 dev_warn_once(&card->gdev->dev,
        "portname is deprecated and is ignored\n");
 return count;
}
