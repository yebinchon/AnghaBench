
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct usb_dev_state {int dummy; } ;


 int EBUSY ;
 int find_port_owner (struct usb_device*,unsigned int,struct usb_dev_state***) ;

int usb_hub_claim_port(struct usb_device *hdev, unsigned port1,
         struct usb_dev_state *owner)
{
 int rc;
 struct usb_dev_state **powner;

 rc = find_port_owner(hdev, port1, &powner);
 if (rc)
  return rc;
 if (*powner)
  return -EBUSY;
 *powner = owner;
 return rc;
}
