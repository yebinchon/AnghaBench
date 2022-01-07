
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct rt2x00_dev {struct data_queue* bcn; } ;
struct queue_entry {int entry_idx; int flags; } ;
struct data_queue {int limit; struct queue_entry* entries; } ;


 int BCN_OFFSET0 ;
 int BCN_OFFSET1 ;
 int ENTRY_BCN_ENABLED ;
 int MAC_BSSID_DW1 ;
 int MAC_BSSID_DW1_BSS_BCN_NUM ;
 int rt2800_get_beacon_offset (struct rt2x00_dev*,int ) ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void rt2800_update_beacons_setup(struct rt2x00_dev *rt2x00dev)
{
 struct data_queue *queue = rt2x00dev->bcn;
 struct queue_entry *entry;
 int i, bcn_num = 0;
 u64 off, reg = 0;
 u32 bssid_dw1;




 for (i = 0; i < queue->limit; i++) {
  entry = &queue->entries[i];
  if (!test_bit(ENTRY_BCN_ENABLED, &entry->flags))
   continue;
  off = rt2800_get_beacon_offset(rt2x00dev, entry->entry_idx);
  reg |= off << (8 * bcn_num);
  bcn_num++;
 }

 rt2800_register_write(rt2x00dev, BCN_OFFSET0, (u32) reg);
 rt2800_register_write(rt2x00dev, BCN_OFFSET1, (u32) (reg >> 32));




 bssid_dw1 = rt2800_register_read(rt2x00dev, MAC_BSSID_DW1);
 rt2x00_set_field32(&bssid_dw1, MAC_BSSID_DW1_BSS_BCN_NUM,
      bcn_num > 0 ? bcn_num - 1 : 0);
 rt2800_register_write(rt2x00dev, MAC_BSSID_DW1, bssid_dw1);
}
