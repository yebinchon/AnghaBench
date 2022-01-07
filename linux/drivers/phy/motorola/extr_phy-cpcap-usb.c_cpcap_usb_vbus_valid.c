
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_phy_ddata {int dev; int vbus; } ;


 int dev_err (int ,char*,int) ;
 int iio_read_channel_processed (int ,int*) ;

__attribute__((used)) static bool cpcap_usb_vbus_valid(struct cpcap_phy_ddata *ddata)
{
 int error, value = 0;

 error = iio_read_channel_processed(ddata->vbus, &value);
 if (error >= 0)
  return value > 3900 ? 1 : 0;

 dev_err(ddata->dev, "error reading VBUS: %i\n", error);

 return 0;
}
