
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int test_packet_buffer ;
struct usba_udc {int test_mode; struct usba_ep* usba_ep; TYPE_1__* pdev; } ;
struct usba_ep {int fifo; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int BK_NUMBER ;
 int CFG ;
 int CTL_ENB ;
 int EINVAL ;
 int EPT_SIZE ;
 int EPT_TYPE ;
 int SET_STA ;
 int SPEED_CFG ;
 int TST ;
 int USBA_BF (int ,int) ;
 int USBA_EPT_DIR_IN ;
 int USBA_EPT_ENABLE ;
 int USBA_EPT_MAPPED ;
 int USBA_EPT_SIZE_64 ;
 int USBA_EPT_TYPE_BULK ;
 int USBA_SPEED_CFG_FORCE_HIGH ;
 int USBA_TST_J_MODE ;
 int USBA_TST_K_MODE ;
 int USBA_TST_PKT_MODE ;
 int USBA_TX_PK_RDY ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int memcpy_toio (int ,char const*,int) ;
 int reset_all_endpoints (struct usba_udc*) ;
 int set_protocol_stall (struct usba_udc*,struct usba_ep*) ;
 int usba_ep_readl (struct usba_ep*,int ) ;
 int usba_ep_writel (struct usba_ep*,int ,int) ;
 int usba_writel (struct usba_udc*,int ,int) ;

__attribute__((used)) static int do_test_mode(struct usba_udc *udc)
{
 static const char test_packet_buffer[] = {

  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

  0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA,

  0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE,

  0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,

  0x7F, 0xBF, 0xDF, 0xEF, 0xF7, 0xFB, 0xFD,

  0xFC, 0x7E, 0xBF, 0xDF, 0xEF, 0xF7, 0xFB, 0xFD, 0x7E
 };
 struct usba_ep *ep;
 struct device *dev = &udc->pdev->dev;
 int test_mode;

 test_mode = udc->test_mode;


 reset_all_endpoints(udc);

 switch (test_mode) {
 case 0x0100:

  usba_writel(udc, TST, USBA_TST_J_MODE);
  dev_info(dev, "Entering Test_J mode...\n");
  break;
 case 0x0200:

  usba_writel(udc, TST, USBA_TST_K_MODE);
  dev_info(dev, "Entering Test_K mode...\n");
  break;
 case 0x0300:




  ep = &udc->usba_ep[0];
  usba_writel(udc, TST,
    USBA_BF(SPEED_CFG, USBA_SPEED_CFG_FORCE_HIGH));
  usba_ep_writel(ep, CFG,
    USBA_BF(EPT_SIZE, USBA_EPT_SIZE_64)
    | USBA_EPT_DIR_IN
    | USBA_BF(EPT_TYPE, USBA_EPT_TYPE_BULK)
    | USBA_BF(BK_NUMBER, 1));
  if (!(usba_ep_readl(ep, CFG) & USBA_EPT_MAPPED)) {
   set_protocol_stall(udc, ep);
   dev_err(dev, "Test_SE0_NAK: ep0 not mapped\n");
  } else {
   usba_ep_writel(ep, CTL_ENB, USBA_EPT_ENABLE);
   dev_info(dev, "Entering Test_SE0_NAK mode...\n");
  }
  break;
 case 0x0400:

  ep = &udc->usba_ep[0];
  usba_ep_writel(ep, CFG,
    USBA_BF(EPT_SIZE, USBA_EPT_SIZE_64)
    | USBA_EPT_DIR_IN
    | USBA_BF(EPT_TYPE, USBA_EPT_TYPE_BULK)
    | USBA_BF(BK_NUMBER, 1));
  if (!(usba_ep_readl(ep, CFG) & USBA_EPT_MAPPED)) {
   set_protocol_stall(udc, ep);
   dev_err(dev, "Test_Packet: ep0 not mapped\n");
  } else {
   usba_ep_writel(ep, CTL_ENB, USBA_EPT_ENABLE);
   usba_writel(udc, TST, USBA_TST_PKT_MODE);
   memcpy_toio(ep->fifo, test_packet_buffer,
     sizeof(test_packet_buffer));
   usba_ep_writel(ep, SET_STA, USBA_TX_PK_RDY);
   dev_info(dev, "Entering Test_Packet mode...\n");
  }
  break;
 default:
  dev_err(dev, "Invalid test mode: 0x%04x\n", test_mode);
  return -EINVAL;
 }

 return 0;
}
