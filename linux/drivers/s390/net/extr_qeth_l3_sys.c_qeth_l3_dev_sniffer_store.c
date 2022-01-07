
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int buf_count; } ;
struct TYPE_7__ {TYPE_2__ init_pool; } ;
struct TYPE_5__ {scalar_t__ cq; unsigned long sniffer; } ;
struct TYPE_8__ {int qdioac2; } ;
struct qeth_card {scalar_t__ state; int conf_mutex; TYPE_3__ qdio; TYPE_1__ options; TYPE_4__ ssqd; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CARD_DDEV (struct qeth_card*) ;
 scalar_t__ CARD_STATE_DOWN ;
 int EINVAL ;
 int EPERM ;
 int IS_IQD (struct qeth_card*) ;
 scalar_t__ QETH_CQ_ENABLED ;
 int QETH_IN_BUF_COUNT_MAX ;
 int QETH_SNIFF_AVAIL ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qdio_get_ssqd_desc (int ,TYPE_4__*) ;
 int qeth_realloc_buffer_pool (struct qeth_card*,int ) ;

__attribute__((used)) static ssize_t qeth_l3_dev_sniffer_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 int rc = 0;
 unsigned long i;

 if (!card)
  return -EINVAL;

 if (!IS_IQD(card))
  return -EPERM;
 if (card->options.cq == QETH_CQ_ENABLED)
  return -EPERM;

 mutex_lock(&card->conf_mutex);
 if (card->state != CARD_STATE_DOWN) {
  rc = -EPERM;
  goto out;
 }

 rc = kstrtoul(buf, 16, &i);
 if (rc) {
  rc = -EINVAL;
  goto out;
 }
 switch (i) {
 case 0:
  card->options.sniffer = i;
  break;
 case 1:
  qdio_get_ssqd_desc(CARD_DDEV(card), &card->ssqd);
  if (card->ssqd.qdioac2 & QETH_SNIFF_AVAIL) {
   card->options.sniffer = i;
   if (card->qdio.init_pool.buf_count !=
     QETH_IN_BUF_COUNT_MAX)
    qeth_realloc_buffer_pool(card,
     QETH_IN_BUF_COUNT_MAX);
  } else
   rc = -EPERM;
  break;
 default:
  rc = -EINVAL;
 }
out:
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
