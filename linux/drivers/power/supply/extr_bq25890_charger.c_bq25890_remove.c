
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct bq25890_device {int usb_nb; int usb_phy; int charger; } ;


 int IS_ERR_OR_NULL (int ) ;
 int bq25890_chip_reset (struct bq25890_device*) ;
 struct bq25890_device* i2c_get_clientdata (struct i2c_client*) ;
 int power_supply_unregister (int ) ;
 int usb_unregister_notifier (int ,int *) ;

__attribute__((used)) static int bq25890_remove(struct i2c_client *client)
{
 struct bq25890_device *bq = i2c_get_clientdata(client);

 power_supply_unregister(bq->charger);

 if (!IS_ERR_OR_NULL(bq->usb_phy))
  usb_unregister_notifier(bq->usb_phy, &bq->usb_nb);


 bq25890_chip_reset(bq);

 return 0;
}
