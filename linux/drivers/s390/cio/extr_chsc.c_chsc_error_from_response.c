
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;

int chsc_error_from_response(int response)
{
 switch (response) {
 case 0x0001:
  return 0;
 case 0x0002:
 case 0x0003:
 case 0x0006:
 case 0x0007:
 case 0x0008:
 case 0x000a:
 case 0x0104:
  return -EINVAL;
 case 0x0004:
  return -EOPNOTSUPP;
 case 0x000b:
 case 0x0107:
  return -EBUSY;
 case 0x0100:
 case 0x0102:
  return -ENOMEM;
 default:
  return -EIO;
 }
}
