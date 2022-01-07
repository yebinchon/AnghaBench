
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef void* uint16_t ;
struct wusb_dev {TYPE_4__* wusb_cap_descr; } ;
struct TYPE_12__ {void* cur_window; void* info3; void* info2; void* info1; } ;
struct whc_qset {int max_seq; int max_burst; TYPE_6__ qh; void* max_packet; TYPE_3__* ep; } ;
struct TYPE_11__ {scalar_t__ phy_rate; } ;
struct whc {TYPE_5__ wusbhc; } ;
struct usb_wireless_ep_comp_descriptor {int bMaxSequence; int bMaxBurst; } ;
struct usb_device {int portnum; struct wusb_dev* wusb_dev; } ;
struct urb {int pipe; TYPE_2__* ep; struct usb_device* dev; } ;
struct TYPE_10__ {int wPHYRates; } ;
struct TYPE_9__ {scalar_t__ extra; } ;
struct TYPE_7__ {int wMaxPacketSize; } ;
struct TYPE_8__ {TYPE_1__ desc; } ;


 int QH_INFO1_DEV_INFO_IDX (int ) ;
 int QH_INFO1_DIR_IN ;
 int QH_INFO1_DIR_OUT ;
 int QH_INFO1_EP (int ) ;
 int QH_INFO1_MAX_PKT_LEN (void*) ;
 int QH_INFO2_BURST (int) ;
 int QH_INFO2_DBP (int ) ;
 int QH_INFO2_MAX_COUNT (int) ;
 int QH_INFO2_MAX_RETRY (int) ;
 int QH_INFO2_MAX_SEQ (int ) ;
 int QH_INFO3_TX_PWR (int ) ;
 int QH_INFO3_TX_RATE (scalar_t__) ;
 scalar_t__ UWB_PHY_RATE_53 ;
 void* cpu_to_le32 (int) ;
 scalar_t__ fls (void*) ;
 void* le16_to_cpu (int ) ;
 int usb_pipe_to_qh_type (int ) ;
 scalar_t__ usb_pipecontrol (int ) ;
 int usb_pipeendpoint (int ) ;
 int usb_pipeout (int ) ;
 int wusb_port_no_to_idx (int ) ;

__attribute__((used)) static void qset_fill_qh(struct whc *whc, struct whc_qset *qset, struct urb *urb)
{
 struct usb_device *usb_dev = urb->dev;
 struct wusb_dev *wusb_dev = usb_dev->wusb_dev;
 struct usb_wireless_ep_comp_descriptor *epcd;
 bool is_out;
 uint8_t phy_rate;

 is_out = usb_pipeout(urb->pipe);

 qset->max_packet = le16_to_cpu(urb->ep->desc.wMaxPacketSize);

 epcd = (struct usb_wireless_ep_comp_descriptor *)qset->ep->extra;
 if (epcd) {
  qset->max_seq = epcd->bMaxSequence;
  qset->max_burst = epcd->bMaxBurst;
 } else {
  qset->max_seq = 2;
  qset->max_burst = 1;
 }






 if (usb_pipecontrol(urb->pipe))
  phy_rate = UWB_PHY_RATE_53;
 else {
  uint16_t phy_rates;

  phy_rates = le16_to_cpu(wusb_dev->wusb_cap_descr->wPHYRates);
  phy_rate = fls(phy_rates) - 1;
  if (phy_rate > whc->wusbhc.phy_rate)
   phy_rate = whc->wusbhc.phy_rate;
 }

 qset->qh.info1 = cpu_to_le32(
  QH_INFO1_EP(usb_pipeendpoint(urb->pipe))
  | (is_out ? QH_INFO1_DIR_OUT : QH_INFO1_DIR_IN)
  | usb_pipe_to_qh_type(urb->pipe)
  | QH_INFO1_DEV_INFO_IDX(wusb_port_no_to_idx(usb_dev->portnum))
  | QH_INFO1_MAX_PKT_LEN(qset->max_packet)
  );
 qset->qh.info2 = cpu_to_le32(
  QH_INFO2_BURST(qset->max_burst)
  | QH_INFO2_DBP(0)
  | QH_INFO2_MAX_COUNT(3)
  | QH_INFO2_MAX_RETRY(3)
  | QH_INFO2_MAX_SEQ(qset->max_seq - 1)
  );




 qset->qh.info3 = cpu_to_le32(
  QH_INFO3_TX_RATE(phy_rate)
  | QH_INFO3_TX_PWR(0)
  );

 qset->qh.cur_window = cpu_to_le32((1 << qset->max_burst) - 1);
}
