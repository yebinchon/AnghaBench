
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int num_proto_errs; } ;


 int ENODEV ;
 int ENOENT ;
 int EPROTO ;
 int ETIMEDOUT ;

__attribute__((used)) static bool rt2x00usb_check_usb_error(struct rt2x00_dev *rt2x00dev, int status)
{
 if (status == -ENODEV || status == -ENOENT)
  return 1;

 if (status == -EPROTO || status == -ETIMEDOUT)
  rt2x00dev->num_proto_errs++;
 else
  rt2x00dev->num_proto_errs = 0;

 if (rt2x00dev->num_proto_errs > 3)
  return 1;

 return 0;
}
