
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EIO ;
 int ENXIO ;

int dell_smbios_error(int value)
{
 switch (value) {
 case 0:
  return 0;
 case -1:
  return -EIO;
 case -2:
  return -ENXIO;
 default:
  return -EINVAL;
 }
}
