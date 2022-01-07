
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qmp {size_t size; int tx_lock; scalar_t__ offset; scalar_t__ msgram; int dev; int event; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int HZ ;
 scalar_t__ WARN_ON (size_t) ;
 int __iowrite32_copy (scalar_t__,void const*,size_t) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qmp_kick (struct qmp*) ;
 int qmp_message_empty (struct qmp*) ;
 long wait_event_interruptible_timeout (int ,int ,int ) ;
 int writel (size_t,scalar_t__) ;

__attribute__((used)) static int qmp_send(struct qmp *qmp, const void *data, size_t len)
{
 long time_left;
 int ret;

 if (WARN_ON(len + sizeof(u32) > qmp->size))
  return -EINVAL;

 if (WARN_ON(len % sizeof(u32)))
  return -EINVAL;

 mutex_lock(&qmp->tx_lock);


 __iowrite32_copy(qmp->msgram + qmp->offset + sizeof(u32),
    data, len / sizeof(u32));
 writel(len, qmp->msgram + qmp->offset);
 qmp_kick(qmp);

 time_left = wait_event_interruptible_timeout(qmp->event,
           qmp_message_empty(qmp), HZ);
 if (!time_left) {
  dev_err(qmp->dev, "ucore did not ack channel\n");
  ret = -ETIMEDOUT;


  writel(0, qmp->msgram + qmp->offset);
 } else {
  ret = 0;
 }

 mutex_unlock(&qmp->tx_lock);

 return ret;
}
