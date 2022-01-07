
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mt7601u_dev {TYPE_1__* ee; } ;
struct TYPE_2__ {int lna_gain; } ;



__attribute__((used)) static u8 mt7601u_agc_default(struct mt7601u_dev *dev)
{
 return (dev->ee->lna_gain - 8) * 2 + 0x34;
}
