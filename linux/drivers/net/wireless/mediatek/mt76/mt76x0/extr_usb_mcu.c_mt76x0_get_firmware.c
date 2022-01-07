
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct firmware {int dummy; } ;


 int MT7610E_FIRMWARE ;
 int MT7610U_FIRMWARE ;
 int dev_info (int ,char*,int ,int ) ;
 int firmware_request_nowarn (struct firmware const**,int ,int ) ;
 int request_firmware (struct firmware const**,int ,int ) ;

__attribute__((used)) static int mt76x0_get_firmware(struct mt76x02_dev *dev,
          const struct firmware **fw)
{
 int err;




 err = firmware_request_nowarn(fw, MT7610E_FIRMWARE, dev->mt76.dev);
 if (err) {
  dev_info(dev->mt76.dev, "%s not found, switching to %s",
    MT7610E_FIRMWARE, MT7610U_FIRMWARE);
  return request_firmware(fw, MT7610U_FIRMWARE,
     dev->mt76.dev);
 }
 return 0;
}
