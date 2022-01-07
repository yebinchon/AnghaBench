
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00_dev {int dummy; } ;
struct queue_entry_priv_usb_bcn {int guardian_urb; int urb; } ;
struct queue_entry_priv_usb {int guardian_urb; int urb; } ;
struct data_queue {unsigned int limit; scalar_t__ qid; TYPE_1__* entries; struct rt2x00_dev* rt2x00dev; } ;
struct TYPE_2__ {struct queue_entry_priv_usb_bcn* priv_data; } ;


 scalar_t__ QID_BEACON ;
 int REQUIRE_BEACON_GUARD ;
 int rt2x00_has_cap_flag (struct rt2x00_dev*,int ) ;
 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void rt2x00usb_free_entries(struct data_queue *queue)
{
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 struct queue_entry_priv_usb *entry_priv;
 struct queue_entry_priv_usb_bcn *bcn_priv;
 unsigned int i;

 if (!queue->entries)
  return;

 for (i = 0; i < queue->limit; i++) {
  entry_priv = queue->entries[i].priv_data;
  usb_kill_urb(entry_priv->urb);
  usb_free_urb(entry_priv->urb);
 }






 if (queue->qid != QID_BEACON ||
     !rt2x00_has_cap_flag(rt2x00dev, REQUIRE_BEACON_GUARD))
  return;

 for (i = 0; i < queue->limit; i++) {
  bcn_priv = queue->entries[i].priv_data;
  usb_kill_urb(bcn_priv->guardian_urb);
  usb_free_urb(bcn_priv->guardian_urb);
 }
}
