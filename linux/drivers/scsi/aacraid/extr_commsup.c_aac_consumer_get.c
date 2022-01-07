
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * consumer; int * producer; } ;
struct aac_queue {scalar_t__ entries; struct aac_entry* base; TYPE_1__ headers; } ;
struct aac_entry {int dummy; } ;
struct aac_dev {int dummy; } ;


 scalar_t__ le32_to_cpu (int ) ;

int aac_consumer_get(struct aac_dev * dev, struct aac_queue * q, struct aac_entry **entry)
{
 u32 index;
 int status;
 if (le32_to_cpu(*q->headers.producer) == le32_to_cpu(*q->headers.consumer)) {
  status = 0;
 } else {





  if (le32_to_cpu(*q->headers.consumer) >= q->entries)
   index = 0;
  else
   index = le32_to_cpu(*q->headers.consumer);
  *entry = q->base + index;
  status = 1;
 }
 return(status);
}
