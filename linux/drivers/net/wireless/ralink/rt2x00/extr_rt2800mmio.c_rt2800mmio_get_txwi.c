
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue_entry {TYPE_1__* skb; } ;
typedef int __le32 ;
struct TYPE_2__ {scalar_t__ data; } ;



__le32 *rt2800mmio_get_txwi(struct queue_entry *entry)
{
 return (__le32 *) entry->skb->data;
}
