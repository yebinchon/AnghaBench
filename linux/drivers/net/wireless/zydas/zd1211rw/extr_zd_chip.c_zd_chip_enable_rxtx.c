
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_chip {int mutex; int usb; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zd_tx_watchdog_enable (int *) ;
 int zd_usb_enable_rx (int *) ;
 int zd_usb_enable_tx (int *) ;

int zd_chip_enable_rxtx(struct zd_chip *chip)
{
 int r;

 mutex_lock(&chip->mutex);
 zd_usb_enable_tx(&chip->usb);
 r = zd_usb_enable_rx(&chip->usb);
 zd_tx_watchdog_enable(&chip->usb);
 mutex_unlock(&chip->mutex);
 return r;
}
