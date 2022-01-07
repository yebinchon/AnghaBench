
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_qdio_out_q {int stats; } ;
struct TYPE_2__ {unsigned int no_out_queues; struct qeth_qdio_out_q** out_qs; } ;
struct qeth_card {TYPE_1__ qdio; int stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int kstrtobool (char const*,int*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static ssize_t qeth_dev_performance_stats_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 struct qeth_qdio_out_q *queue;
 unsigned int i;
 bool reset;
 int rc;

 if (!card)
  return -EINVAL;

 rc = kstrtobool(buf, &reset);
 if (rc)
  return rc;

 if (reset) {
  memset(&card->stats, 0, sizeof(card->stats));
  for (i = 0; i < card->qdio.no_out_queues; i++) {
   queue = card->qdio.out_qs[i];
   if (!queue)
    break;
   memset(&queue->stats, 0, sizeof(queue->stats));
  }
 }

 return count;
}
