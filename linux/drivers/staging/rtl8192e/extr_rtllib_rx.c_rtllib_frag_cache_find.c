
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rtllib_frag_entry {unsigned int seq; int last_frag; int dst_addr; int src_addr; int * skb; scalar_t__ first_frag_time; } ;
struct rtllib_device {int dev; struct rtllib_frag_entry** frag_cache; } ;


 int ETH_ALEN ;
 int HZ ;
 int RTLLIB_FRAG_CACHE_LEN ;
 int dev_kfree_skb_any (int *) ;
 int jiffies ;
 scalar_t__ memcmp (int ,size_t*,int ) ;
 int netdev_dbg (int ,char*,unsigned int,int) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static struct rtllib_frag_entry *
rtllib_frag_cache_find(struct rtllib_device *ieee, unsigned int seq,
     unsigned int frag, u8 tid, u8 *src, u8 *dst)
{
 struct rtllib_frag_entry *entry;
 int i;

 for (i = 0; i < RTLLIB_FRAG_CACHE_LEN; i++) {
  entry = &ieee->frag_cache[tid][i];
  if (entry->skb != ((void*)0) &&
      time_after(jiffies, entry->first_frag_time + 2 * HZ)) {
   netdev_dbg(ieee->dev,
       "expiring fragment cache entry seq=%u last_frag=%u\n",
       entry->seq, entry->last_frag);
   dev_kfree_skb_any(entry->skb);
   entry->skb = ((void*)0);
  }

  if (entry->skb != ((void*)0) && entry->seq == seq &&
      (entry->last_frag + 1 == frag || frag == -1) &&
      memcmp(entry->src_addr, src, ETH_ALEN) == 0 &&
      memcmp(entry->dst_addr, dst, ETH_ALEN) == 0)
   return entry;
 }

 return ((void*)0);
}
