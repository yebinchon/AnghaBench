
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tssi_data {int slope; int tx0_delta_offset; int* offset; } ;
struct mt7601u_dev {TYPE_1__* ee; } ;
struct TYPE_2__ {int tssi_enabled; struct tssi_data tssi_data; } ;


 size_t MT_EE_TX_TSSI_OFFSET ;
 size_t MT_EE_TX_TSSI_OFFSET_GROUP ;
 size_t MT_EE_TX_TSSI_SLOPE ;

__attribute__((used)) static void
mt7601u_init_tssi_params(struct mt7601u_dev *dev, u8 *eeprom)
{
 struct tssi_data *d = &dev->ee->tssi_data;

 if (!dev->ee->tssi_enabled)
  return;

 d->slope = eeprom[MT_EE_TX_TSSI_SLOPE];
 d->tx0_delta_offset = eeprom[MT_EE_TX_TSSI_OFFSET] * 1024;
 d->offset[0] = eeprom[MT_EE_TX_TSSI_OFFSET_GROUP];
 d->offset[1] = eeprom[MT_EE_TX_TSSI_OFFSET_GROUP + 1];
 d->offset[2] = eeprom[MT_EE_TX_TSSI_OFFSET_GROUP + 2];
}
