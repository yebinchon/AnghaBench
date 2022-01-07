
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_dbg (struct device*,char*) ;

__attribute__((used)) static int handle_quectel_ec20(struct device *dev, int ifnum)
{
 int altsetting = 0;
 switch (ifnum) {
 case 0:
  dev_dbg(dev, "Quectel EC20 DM/DIAG interface found\n");
  break;
 case 1:
  dev_dbg(dev, "Quectel EC20 NMEA GPS interface found\n");
  break;
 case 2:
 case 3:
  dev_dbg(dev, "Quectel EC20 Modem port found\n");
  break;
 case 4:

  altsetting = -1;
  break;
 }

 return altsetting;
}
