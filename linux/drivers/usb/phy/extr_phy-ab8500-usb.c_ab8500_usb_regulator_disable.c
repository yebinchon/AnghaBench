
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_usb {int flags; scalar_t__ saved_v_ulpi; int v_ape; int dev; int v_ulpi; int v_musb; } ;


 int AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE ;
 int dev_err (int ,char*,int,...) ;
 int regulator_disable (int ) ;
 int regulator_set_load (int ,int ) ;
 int regulator_set_voltage (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void ab8500_usb_regulator_disable(struct ab8500_usb *ab)
{
 int ret;

 regulator_disable(ab->v_musb);

 regulator_disable(ab->v_ulpi);


 if (ab->flags & AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE) {
  if (ab->saved_v_ulpi > 0) {
   ret = regulator_set_voltage(ab->v_ulpi,
     ab->saved_v_ulpi, ab->saved_v_ulpi);
   if (ret < 0)
    dev_err(ab->dev, "Failed to set the Vintcore to %duV, ret=%d\n",
      ab->saved_v_ulpi, ret);
  }

  ret = regulator_set_load(ab->v_ulpi, 0);
  if (ret < 0)
   dev_err(ab->dev, "Failed to set optimum mode (ret=%d)\n",
     ret);
 }

 regulator_disable(ab->v_ape);
}
