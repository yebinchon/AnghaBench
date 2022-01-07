
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt76_tx_status {int pktid; int rate; int is_probe; int retry; } ;
struct mt7601u_dev {int dummy; } ;



__attribute__((used)) static void
mt7601u_tx_pktid_dec(struct mt7601u_dev *dev, struct mt76_tx_status *stat)
{
 u8 req_rate = stat->pktid;
 u8 eff_rate = stat->rate & 0x7;

 req_rate -= 1;

 if (req_rate > 7) {
  stat->is_probe = 1;
  req_rate -= 8;


  if (!req_rate && eff_rate)
   req_rate = 7;
 }

 stat->retry = req_rate - eff_rate;
}
