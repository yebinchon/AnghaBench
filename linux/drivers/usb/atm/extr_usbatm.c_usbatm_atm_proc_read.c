
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbatm_data {char* description; scalar_t__ disconnected; } ;
struct TYPE_3__ {int rx_drop; int rx_err; int rx; int tx_err; int tx; } ;
struct TYPE_4__ {TYPE_1__ aal5; } ;
struct atm_dev {int signal; TYPE_2__ stats; int esi; struct usbatm_data* dev_data; } ;
typedef int loff_t ;




 int ENODEV ;
 int atomic_read (int *) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int usbatm_atm_proc_read(struct atm_dev *atm_dev, loff_t *pos, char *page)
{
 struct usbatm_data *instance = atm_dev->dev_data;
 int left = *pos;

 if (!instance)
  return -ENODEV;

 if (!left--)
  return sprintf(page, "%s\n", instance->description);

 if (!left--)
  return sprintf(page, "MAC: %pM\n", atm_dev->esi);

 if (!left--)
  return sprintf(page,
          "AAL5: tx %d ( %d err ), rx %d ( %d err, %d drop )\n",
          atomic_read(&atm_dev->stats.aal5.tx),
          atomic_read(&atm_dev->stats.aal5.tx_err),
          atomic_read(&atm_dev->stats.aal5.rx),
          atomic_read(&atm_dev->stats.aal5.rx_err),
          atomic_read(&atm_dev->stats.aal5.rx_drop));

 if (!left--) {
  if (instance->disconnected)
   return sprintf(page, "Disconnected\n");
  else
   switch (atm_dev->signal) {
   case 129:
    return sprintf(page, "Line up\n");
   case 128:
    return sprintf(page, "Line down\n");
   default:
    return sprintf(page, "Line state unknown\n");
   }
 }

 return 0;
}
