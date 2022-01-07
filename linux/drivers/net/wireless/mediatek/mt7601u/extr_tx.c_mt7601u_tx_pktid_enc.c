
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7601u_dev {int dummy; } ;



__attribute__((used)) static u8 mt7601u_tx_pktid_enc(struct mt7601u_dev *dev, u8 rate, bool is_probe)
{
 u8 encoded = (rate + 1) + is_probe * 8;






 if (is_probe && rate == 7)
  return encoded - 7;

 return encoded;
}
