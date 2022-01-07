
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_ioreq16 {int addr; } ;
struct zd_chip {int usb; int mutex; } ;


 unsigned int USB_MAX_IOWRITE16_COUNT ;
 int ZD_ASSERT (int ) ;
 int dev_dbg_f (int ,char*,int) ;
 int mutex_is_locked (int *) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_usb_iowrite16v_async (int *,struct zd_ioreq16 const*,unsigned int) ;
 int zd_usb_iowrite16v_async_end (int *,int) ;
 int zd_usb_iowrite16v_async_start (int *) ;

int zd_iowrite16a_locked(struct zd_chip *chip,
                  const struct zd_ioreq16 *ioreqs, unsigned int count)
{
 int r;
 unsigned int i, j, t, max;

 ZD_ASSERT(mutex_is_locked(&chip->mutex));
 zd_usb_iowrite16v_async_start(&chip->usb);

 for (i = 0; i < count; i += j + t) {
  t = 0;
  max = count-i;
  if (max > USB_MAX_IOWRITE16_COUNT)
   max = USB_MAX_IOWRITE16_COUNT;
  for (j = 0; j < max; j++) {
   if (!ioreqs[i+j].addr) {
    t = 1;
    break;
   }
  }

  r = zd_usb_iowrite16v_async(&chip->usb, &ioreqs[i], j);
  if (r) {
   zd_usb_iowrite16v_async_end(&chip->usb, 0);
   dev_dbg_f(zd_chip_dev(chip),
      "error zd_usb_iowrite16v. Error number %d\n",
      r);
   return r;
  }
 }

 return zd_usb_iowrite16v_async_end(&chip->usb, 50 );
}
