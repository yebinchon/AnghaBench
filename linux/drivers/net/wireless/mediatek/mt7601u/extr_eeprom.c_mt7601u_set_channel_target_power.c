
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mt7601u_dev {TYPE_1__* ee; int dev; } ;
struct TYPE_2__ {int chan_pwr; } ;


 size_t MT_EE_TX_TSSI_TARGET_POWER ;
 int dev_warn (int ,char*,int) ;
 int memset (int ,int,int) ;

__attribute__((used)) static void mt7601u_set_channel_target_power(struct mt7601u_dev *dev,
          u8 *eeprom, u8 max_pwr)
{
 u8 trgt_pwr = eeprom[MT_EE_TX_TSSI_TARGET_POWER];

 if (trgt_pwr > max_pwr || !trgt_pwr) {
  dev_warn(dev->dev, "Error: EEPROM trgt power invalid %hhx!\n",
    trgt_pwr);
  trgt_pwr = 0x20;
 }

 memset(dev->ee->chan_pwr, trgt_pwr, sizeof(dev->ee->chan_pwr));
}
