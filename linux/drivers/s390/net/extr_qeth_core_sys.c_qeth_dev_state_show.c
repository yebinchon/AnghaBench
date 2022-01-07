
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {int state; TYPE_1__* dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int flags; } ;





 int EINVAL ;
 int IFF_UP ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int netif_carrier_ok (TYPE_1__*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t qeth_dev_state_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 if (!card)
  return -EINVAL;

 switch (card->state) {
 case 130:
  return sprintf(buf, "DOWN\n");
 case 129:
  return sprintf(buf, "HARDSETUP\n");
 case 128:
  if (card->dev->flags & IFF_UP)
   return sprintf(buf, "UP (LAN %s)\n",
           netif_carrier_ok(card->dev) ? "ONLINE" :
             "OFFLINE");
  return sprintf(buf, "SOFTSETUP\n");
 default:
  return sprintf(buf, "UNKNOWN\n");
 }
}
