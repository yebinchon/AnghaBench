
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 char* FIRMWARE_RT2860 ;
 char* FIRMWARE_RT3290 ;
 int RT3290 ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;

__attribute__((used)) static char *rt2800pci_get_firmware_name(struct rt2x00_dev *rt2x00dev)
{



 if (rt2x00_rt(rt2x00dev, RT3290))
  return FIRMWARE_RT3290;
 else
  return FIRMWARE_RT2860;
}
