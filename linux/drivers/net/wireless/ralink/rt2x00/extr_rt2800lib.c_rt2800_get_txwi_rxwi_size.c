
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rt; } ;
struct rt2x00_dev {TYPE_1__ chip; } ;






 unsigned short RXWI_DESC_SIZE_4WORDS ;
 unsigned short RXWI_DESC_SIZE_5WORDS ;
 unsigned short RXWI_DESC_SIZE_6WORDS ;
 unsigned short TXWI_DESC_SIZE_4WORDS ;
 unsigned short TXWI_DESC_SIZE_5WORDS ;

void rt2800_get_txwi_rxwi_size(struct rt2x00_dev *rt2x00dev,
          unsigned short *txwi_size,
          unsigned short *rxwi_size)
{
 switch (rt2x00dev->chip.rt) {
 case 131:
 case 130:
  *txwi_size = TXWI_DESC_SIZE_4WORDS;
  *rxwi_size = RXWI_DESC_SIZE_5WORDS;
  break;

 case 129:
 case 128:
  *txwi_size = TXWI_DESC_SIZE_5WORDS;
  *rxwi_size = RXWI_DESC_SIZE_6WORDS;
  break;

 default:
  *txwi_size = TXWI_DESC_SIZE_4WORDS;
  *rxwi_size = RXWI_DESC_SIZE_4WORDS;
  break;
 }
}
