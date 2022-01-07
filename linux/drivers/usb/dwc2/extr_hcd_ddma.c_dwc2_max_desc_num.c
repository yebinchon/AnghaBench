
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dwc2_qh {scalar_t__ ep_type; scalar_t__ dev_speed; } ;


 int MAX_DMA_DESC_NUM_GENERIC ;
 int MAX_DMA_DESC_NUM_HS_ISOC ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 scalar_t__ USB_SPEED_HIGH ;

__attribute__((used)) static u16 dwc2_max_desc_num(struct dwc2_qh *qh)
{
 return (qh->ep_type == USB_ENDPOINT_XFER_ISOC &&
  qh->dev_speed == USB_SPEED_HIGH) ?
  MAX_DMA_DESC_NUM_HS_ISOC : MAX_DMA_DESC_NUM_GENERIC;
}
