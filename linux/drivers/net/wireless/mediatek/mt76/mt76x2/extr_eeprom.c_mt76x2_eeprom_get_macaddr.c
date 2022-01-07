
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; } ;
struct TYPE_4__ {int macaddr; TYPE_1__ eeprom; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;


 int ETH_ALEN ;
 int MT_EE_MAC_ADDR ;
 int memcpy (int ,void*,int ) ;

__attribute__((used)) static int
mt76x2_eeprom_get_macaddr(struct mt76x02_dev *dev)
{
 void *src = dev->mt76.eeprom.data + MT_EE_MAC_ADDR;

 memcpy(dev->mt76.macaddr, src, ETH_ALEN);
 return 0;
}
