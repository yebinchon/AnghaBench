
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int dummy; } ;
struct cpcap_charger_ddata {int dev; struct iio_channel** channels; } ;


 size_t CPCAP_CHARGER_IIO_VBUS ;
 int dev_err (int ,char*,int) ;
 int iio_read_channel_processed (struct iio_channel*,int*) ;

__attribute__((used)) static bool cpcap_charger_vbus_valid(struct cpcap_charger_ddata *ddata)
{
 int error, value = 0;
 struct iio_channel *channel =
  ddata->channels[CPCAP_CHARGER_IIO_VBUS];

 error = iio_read_channel_processed(channel, &value);
 if (error >= 0)
  return value > 3900 ? 1 : 0;

 dev_err(ddata->dev, "error reading VBUS: %i\n", error);

 return 0;
}
