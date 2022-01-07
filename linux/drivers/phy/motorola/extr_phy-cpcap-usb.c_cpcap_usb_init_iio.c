
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct cpcap_phy_ddata {int dev; TYPE_1__* vbus; } ;
typedef enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;
struct TYPE_5__ {int indio_dev; } ;


 int EINVAL ;
 int ENXIO ;
 int IIO_VOLTAGE ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int dev_err (int ,char*,int) ;
 TYPE_1__* devm_iio_channel_get (int ,char*) ;
 int iio_get_channel_type (TYPE_1__*,int*) ;

__attribute__((used)) static int cpcap_usb_init_iio(struct cpcap_phy_ddata *ddata)
{
 enum iio_chan_type type;
 int error;

 ddata->vbus = devm_iio_channel_get(ddata->dev, "vbus");
 if (IS_ERR(ddata->vbus)) {
  error = PTR_ERR(ddata->vbus);
  goto out_err;
 }

 if (!ddata->vbus->indio_dev) {
  error = -ENXIO;
  goto out_err;
 }

 error = iio_get_channel_type(ddata->vbus, &type);
 if (error < 0)
  goto out_err;

 if (type != IIO_VOLTAGE) {
  error = -EINVAL;
  goto out_err;
 }

 return 0;

out_err:
 dev_err(ddata->dev, "could not initialize VBUS or ID IIO: %i\n",
  error);

 return error;
}
