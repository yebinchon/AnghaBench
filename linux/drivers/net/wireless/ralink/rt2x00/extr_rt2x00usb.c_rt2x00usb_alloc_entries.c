
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00_dev {int dummy; } ;
struct queue_entry_priv_usb_bcn {void* guardian_urb; void* urb; } ;
struct queue_entry_priv_usb {void* guardian_urb; void* urb; } ;
struct data_queue {unsigned int limit; scalar_t__ qid; TYPE_1__* entries; struct rt2x00_dev* rt2x00dev; } ;
struct TYPE_2__ {struct queue_entry_priv_usb_bcn* priv_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ QID_BEACON ;
 int REQUIRE_BEACON_GUARD ;
 int rt2x00_has_cap_flag (struct rt2x00_dev*,int ) ;
 void* usb_alloc_urb (int ,int ) ;

__attribute__((used)) static int rt2x00usb_alloc_entries(struct data_queue *queue)
{
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 struct queue_entry_priv_usb *entry_priv;
 struct queue_entry_priv_usb_bcn *bcn_priv;
 unsigned int i;

 for (i = 0; i < queue->limit; i++) {
  entry_priv = queue->entries[i].priv_data;
  entry_priv->urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!entry_priv->urb)
   return -ENOMEM;
 }






 if (queue->qid != QID_BEACON ||
     !rt2x00_has_cap_flag(rt2x00dev, REQUIRE_BEACON_GUARD))
  return 0;

 for (i = 0; i < queue->limit; i++) {
  bcn_priv = queue->entries[i].priv_data;
  bcn_priv->guardian_urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!bcn_priv->guardian_urb)
   return -ENOMEM;
 }

 return 0;
}
