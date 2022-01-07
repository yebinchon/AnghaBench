
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pcnt; } ;
struct qeth_card {scalar_t__ state; int conf_mutex; TYPE_2__* dev; TYPE_1__ ssqd; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {unsigned int dev_port; } ;


 scalar_t__ CARD_STATE_DOWN ;
 int EINVAL ;
 int EPERM ;
 unsigned int QETH_MAX_PORTNO ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int simple_strtoul (char const*,char**,int) ;

__attribute__((used)) static ssize_t qeth_dev_portno_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 char *tmp;
 unsigned int portno, limit;
 int rc = 0;

 if (!card)
  return -EINVAL;

 mutex_lock(&card->conf_mutex);
 if (card->state != CARD_STATE_DOWN) {
  rc = -EPERM;
  goto out;
 }

 portno = simple_strtoul(buf, &tmp, 16);
 if (portno > QETH_MAX_PORTNO) {
  rc = -EINVAL;
  goto out;
 }
 limit = (card->ssqd.pcnt ? card->ssqd.pcnt - 1 : card->ssqd.pcnt);
 if (portno > limit) {
  rc = -EINVAL;
  goto out;
 }
 card->dev->dev_port = portno;
out:
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
