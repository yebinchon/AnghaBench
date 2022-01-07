
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int route4; } ;
struct qeth_card {TYPE_1__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int QETH_PROT_IPV4 ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int qeth_l3_dev_route_store (struct qeth_card*,int *,int ,char const*,size_t) ;

__attribute__((used)) static ssize_t qeth_l3_dev_route4_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);

 if (!card)
  return -EINVAL;

 return qeth_l3_dev_route_store(card, &card->options.route4,
    QETH_PROT_IPV4, buf, count);
}
