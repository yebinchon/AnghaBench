
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct comedi_device {int n_subdevices; } ;


 int jr3_check_firmware (struct comedi_device*,int const*,size_t) ;
 int jr3_write_firmware (struct comedi_device*,int,int const*,size_t) ;

__attribute__((used)) static int jr3_download_firmware(struct comedi_device *dev,
     const u8 *data, size_t size,
     unsigned long context)
{
 int subdev;
 int ret;


 ret = jr3_check_firmware(dev, data, size);
 if (ret)
  return ret;


 for (subdev = 0; subdev < dev->n_subdevices; subdev++)
  jr3_write_firmware(dev, subdev, data, size);

 return 0;
}
