
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * consumer; int * producer; } ;
struct aac_queue {scalar_t__ entries; TYPE_1__ headers; } ;
struct aac_dev {int dummy; } ;


 int BUG () ;
 int HostNormCmdNotFull ;

 int HostNormRespNotFull ;

 int aac_adapter_notify (struct aac_dev*,int) ;
 int cpu_to_le32 (int) ;
 int le32_add_cpu (int *,int) ;
 scalar_t__ le32_to_cpu (int ) ;

void aac_consumer_free(struct aac_dev * dev, struct aac_queue *q, u32 qid)
{
 int wasfull = 0;
 u32 notify;

 if ((le32_to_cpu(*q->headers.producer)+1) == le32_to_cpu(*q->headers.consumer))
  wasfull = 1;

 if (le32_to_cpu(*q->headers.consumer) >= q->entries)
  *q->headers.consumer = cpu_to_le32(1);
 else
  le32_add_cpu(q->headers.consumer, 1);

 if (wasfull) {
  switch (qid) {

  case 129:
   notify = HostNormCmdNotFull;
   break;
  case 128:
   notify = HostNormRespNotFull;
   break;
  default:
   BUG();
   return;
  }
  aac_adapter_notify(dev, notify);
 }
}
