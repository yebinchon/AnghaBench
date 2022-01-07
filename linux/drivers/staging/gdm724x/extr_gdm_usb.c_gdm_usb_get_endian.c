
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lte_udev {int gdm_ed; } ;



__attribute__((used)) static u8 gdm_usb_get_endian(void *priv_dev)
{
 struct lte_udev *udev = priv_dev;

 return udev->gdm_ed;
}
