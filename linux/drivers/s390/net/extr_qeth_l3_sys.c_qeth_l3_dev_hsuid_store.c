
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cq; char* hsuid; scalar_t__ sniffer; } ;
struct qeth_card {scalar_t__ state; TYPE_2__ options; TYPE_1__* dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {int perm_addr; } ;


 int ASCEBC (char*,int) ;
 scalar_t__ CARD_STATE_DOWN ;
 size_t EINVAL ;
 size_t EPERM ;
 int IS_IQD (struct qeth_card*) ;
 int QETH_CQ_DISABLED ;
 int QETH_CQ_ENABLED ;
 scalar_t__ QETH_CQ_NOTAVAILABLE ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int memcpy (int ,char*,int) ;
 scalar_t__ qeth_configure_cq (struct qeth_card*,int ) ;
 int qeth_l3_modify_hsuid (struct qeth_card*,int) ;
 int snprintf (char*,int,char*,char*) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static ssize_t qeth_l3_dev_hsuid_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 char *tmp;
 int rc;

 if (!card)
  return -EINVAL;

 if (!IS_IQD(card))
  return -EPERM;
 if (card->state != CARD_STATE_DOWN)
  return -EPERM;
 if (card->options.sniffer)
  return -EPERM;
 if (card->options.cq == QETH_CQ_NOTAVAILABLE)
  return -EPERM;

 tmp = strsep((char **)&buf, "\n");
 if (strlen(tmp) > 8)
  return -EINVAL;

 if (card->options.hsuid[0])

  qeth_l3_modify_hsuid(card, 0);

 if (strlen(tmp) == 0) {

  card->options.hsuid[0] = '\0';
  memcpy(card->dev->perm_addr, card->options.hsuid, 9);
  qeth_configure_cq(card, QETH_CQ_DISABLED);
  return count;
 }

 if (qeth_configure_cq(card, QETH_CQ_ENABLED))
  return -EPERM;

 snprintf(card->options.hsuid, sizeof(card->options.hsuid),
   "%-8s", tmp);
 ASCEBC(card->options.hsuid, 8);
 memcpy(card->dev->perm_addr, card->options.hsuid, 9);

 rc = qeth_l3_modify_hsuid(card, 1);

 return rc ? rc : count;
}
