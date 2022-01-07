
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct usb_ctrlrequest {int bRequestType; int wLength; int wIndex; int wValue; int bRequest; } ;
struct mtu3_request {int request; } ;
struct mtu3 {int ep0_state; int mac_base; int dev; int ep0; } ;


 int EP0_DPHTX ;
 int EP0_SETUPPKTRDY ;
 int EP0_W1C_BITS ;
 int MU3D_EP0_STATE_RX ;
 int MU3D_EP0_STATE_TX ;
 int U3D_EP0CSR ;
 int U3D_RXCOUNT0 ;
 int USB_DIR_IN ;
 int dev_dbg (int ,char*,int,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int ep0_read_fifo (int ,int *,int) ;
 int ep0_req_giveback (struct mtu3*,int *) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mtu3_readl (int ,int ) ;
 int mtu3_writel (int ,int ,int) ;
 struct mtu3_request* next_ep0_request (struct mtu3*) ;

__attribute__((used)) static void ep0_read_setup(struct mtu3 *mtu, struct usb_ctrlrequest *setup)
{
 struct mtu3_request *mreq;
 u32 count;
 u32 csr;

 csr = mtu3_readl(mtu->mac_base, U3D_EP0CSR) & EP0_W1C_BITS;
 count = mtu3_readl(mtu->mac_base, U3D_RXCOUNT0);

 ep0_read_fifo(mtu->ep0, (u8 *)setup, count);

 dev_dbg(mtu->dev, "SETUP req%02x.%02x v%04x i%04x l%04x\n",
   setup->bRequestType, setup->bRequest,
   le16_to_cpu(setup->wValue), le16_to_cpu(setup->wIndex),
   le16_to_cpu(setup->wLength));


 mreq = next_ep0_request(mtu);
 if (mreq)
  ep0_req_giveback(mtu, &mreq->request);

 if (le16_to_cpu(setup->wLength) == 0) {
  ;
 } else if (setup->bRequestType & USB_DIR_IN) {
  mtu3_writel(mtu->mac_base, U3D_EP0CSR,
   csr | EP0_SETUPPKTRDY | EP0_DPHTX);
  mtu->ep0_state = MU3D_EP0_STATE_TX;
 } else {
  mtu3_writel(mtu->mac_base, U3D_EP0CSR,
   (csr | EP0_SETUPPKTRDY) & (~EP0_DPHTX));
  mtu->ep0_state = MU3D_EP0_STATE_RX;
 }
}
