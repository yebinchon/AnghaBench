
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_ioreq32 {int dummy; } ;
struct zd_chip {int usb; } ;


 int _zd_iowrite32v_async_locked (struct zd_chip*,struct zd_ioreq32 const*,unsigned int) ;
 int zd_usb_iowrite16v_async_end (int *,int) ;
 int zd_usb_iowrite16v_async_start (int *) ;

int _zd_iowrite32v_locked(struct zd_chip *chip, const struct zd_ioreq32 *ioreqs,
     unsigned int count)
{
 int r;

 zd_usb_iowrite16v_async_start(&chip->usb);
 r = _zd_iowrite32v_async_locked(chip, ioreqs, count);
 if (r) {
  zd_usb_iowrite16v_async_end(&chip->usb, 0);
  return r;
 }
 return zd_usb_iowrite16v_async_end(&chip->usb, 50 );
}
