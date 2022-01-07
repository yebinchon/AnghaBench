
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int num_tx_desc; int tx_frames_cnt; struct sk_buff** tx_frames; int tx_frames_map; } ;
struct sk_buff {int dummy; } ;


 int EBUSY ;
 int __set_bit (int,int ) ;
 int find_first_zero_bit (int ,int) ;

__attribute__((used)) static int wl1271_alloc_tx_id(struct wl1271 *wl, struct sk_buff *skb)
{
 int id;

 id = find_first_zero_bit(wl->tx_frames_map, wl->num_tx_desc);
 if (id >= wl->num_tx_desc)
  return -EBUSY;

 __set_bit(id, wl->tx_frames_map);
 wl->tx_frames[id] = skb;
 wl->tx_frames_cnt++;
 return id;
}
