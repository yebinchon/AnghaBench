
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_drvinfo_819x_usb {int RxRate; scalar_t__ RxHT; } ;







__attribute__((used)) static inline bool rx_hal_is_cck_rate(struct rx_drvinfo_819x_usb *pdrvinfo)
{
 if (pdrvinfo->RxHT)
  return 0;

 switch (pdrvinfo->RxRate) {
 case 130:
 case 129:
 case 128:
 case 131:
  return 1;
 default:
  return 0;
 }
}
