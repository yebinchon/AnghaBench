
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pn544_i2c_phy {int en_polarity; int gpiod_en; TYPE_1__* i2c_dev; int gpiod_fw; } ;
typedef int rset_cmd ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int i2c_master_send (TYPE_1__*,char*,int) ;
 int nfc_err (int *,char*) ;
 int nfc_info (int *,char*,...) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void pn544_hci_i2c_platform_init(struct pn544_i2c_phy *phy)
{
 int polarity, retry, ret;
 char rset_cmd[] = { 0x05, 0xF9, 0x04, 0x00, 0xC3, 0xE5 };
 int count = sizeof(rset_cmd);

 nfc_info(&phy->i2c_dev->dev, "Detecting nfc_en polarity\n");


 gpiod_set_value_cansleep(phy->gpiod_fw, 0);

 for (polarity = 0; polarity < 2; polarity++) {
  phy->en_polarity = polarity;
  retry = 3;
  while (retry--) {

   gpiod_set_value_cansleep(phy->gpiod_en, !phy->en_polarity);
   usleep_range(10000, 15000);


   gpiod_set_value_cansleep(phy->gpiod_en, phy->en_polarity);
   usleep_range(10000, 15000);


   dev_dbg(&phy->i2c_dev->dev, "Sending reset cmd\n");
   ret = i2c_master_send(phy->i2c_dev, rset_cmd, count);
   if (ret == count) {
    nfc_info(&phy->i2c_dev->dev,
      "nfc_en polarity : active %s\n",
      (polarity == 0 ? "low" : "high"));
    goto out;
   }
  }
 }

 nfc_err(&phy->i2c_dev->dev,
  "Could not detect nfc_en polarity, fallback to active high\n");

out:
 gpiod_set_value_cansleep(phy->gpiod_en, !phy->en_polarity);
}
