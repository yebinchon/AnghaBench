
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct device {int dummy; } ;
typedef int __le32 ;



 int EPIPE ;

 int RH_PS_OCIC ;
 int RH_PS_POCI ;
 int RH_PS_PPS ;



 int cpu_to_le32 (int) ;
 int dev_dbg (struct device*,char*,...) ;
 int hcd_to_ohci (struct usb_hcd*) ;
 int ocic_mask ;
 int ohci_da8xx_get_oci (struct usb_hcd*) ;
 int ohci_da8xx_get_power (struct usb_hcd*) ;
 int ohci_da8xx_set_power (struct usb_hcd*,int) ;
 int orig_ohci_hub_control (struct usb_hcd*,int,int,int,char*,int) ;
 int put_unaligned (int ,int *) ;
 int roothub_portstatus (int ,int ) ;

__attribute__((used)) static int ohci_da8xx_hub_control(struct usb_hcd *hcd, u16 typeReq, u16 wValue,
      u16 wIndex, char *buf, u16 wLength)
{
 struct device *dev = hcd->self.controller;
 int temp;

 switch (typeReq) {
 case 131:

  if (wIndex != 1)
   break;

  dev_dbg(dev, "GetPortStatus(%u)\n", wIndex);

  temp = roothub_portstatus(hcd_to_ohci(hcd), wIndex - 1);


  if (!ohci_da8xx_get_power(hcd))
   temp &= ~RH_PS_PPS;


  if (ohci_da8xx_get_oci(hcd) > 0)
   temp |= RH_PS_POCI;


  if (ocic_mask & (1 << wIndex))
   temp |= RH_PS_OCIC;

  put_unaligned(cpu_to_le32(temp), (__le32 *)buf);
  return 0;
 case 130:
  temp = 1;
  goto check_port;
 case 132:
  temp = 0;

check_port:

  if (wIndex != 1)
   break;

  switch (wValue) {
  case 128:
   dev_dbg(dev, "%sPortFeature(%u): %s\n",
    temp ? "Set" : "Clear", wIndex, "POWER");

   return ohci_da8xx_set_power(hcd, temp) ? -EPIPE : 0;
  case 129:
   dev_dbg(dev, "%sPortFeature(%u): %s\n",
    temp ? "Set" : "Clear", wIndex,
    "C_OVER_CURRENT");

   if (temp)
    ocic_mask |= 1 << wIndex;
   else
    ocic_mask &= ~(1 << wIndex);
   return 0;
  }
 }

 return orig_ohci_hub_control(hcd, typeReq, wValue,
   wIndex, buf, wLength);
}
