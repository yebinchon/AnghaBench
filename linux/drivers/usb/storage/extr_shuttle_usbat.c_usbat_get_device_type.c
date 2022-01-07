
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbat_info {int devicetype; } ;
struct us_data {scalar_t__ extra; } ;



__attribute__((used)) static int usbat_get_device_type(struct us_data *us)
{
 return ((struct usbat_info*)us->extra)->devicetype;
}
