
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_usbmisc_data {int index; int dev; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int usbmisc_imx6_hsic_get_reg_offset(struct imx_usbmisc_data *data)
{
 int offset, ret = 0;

 if (data->index == 2 || data->index == 3) {
  offset = (data->index - 2) * 4;
 } else if (data->index == 0) {





  offset = 0;
 } else {
  dev_err(data->dev, "index is error for usbmisc\n");
  ret = -EINVAL;
 }

 return ret ? ret : offset;
}
