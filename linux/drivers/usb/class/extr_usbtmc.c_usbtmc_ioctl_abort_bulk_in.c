
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtmc_device_data {int bTag_last_read; } ;


 int usbtmc_ioctl_abort_bulk_in_tag (struct usbtmc_device_data*,int ) ;

__attribute__((used)) static int usbtmc_ioctl_abort_bulk_in(struct usbtmc_device_data *data)
{
 return usbtmc_ioctl_abort_bulk_in_tag(data, data->bTag_last_read);
}
