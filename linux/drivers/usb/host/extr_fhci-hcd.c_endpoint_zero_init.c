
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fhci_usb {int ep0; } ;
typedef enum fhci_mem_alloc { ____Placeholder_fhci_mem_alloc } fhci_mem_alloc ;


 scalar_t__ fhci_create_ep (struct fhci_usb*,int,scalar_t__) ;
 int fhci_init_ep_registers (struct fhci_usb*,int ,int) ;

__attribute__((used)) static u32 endpoint_zero_init(struct fhci_usb *usb,
         enum fhci_mem_alloc data_mem,
         u32 ring_len)
{
 u32 rc;

 rc = fhci_create_ep(usb, data_mem, ring_len);
 if (rc)
  return rc;


 fhci_init_ep_registers(usb, usb->ep0, data_mem);

 return 0;
}
