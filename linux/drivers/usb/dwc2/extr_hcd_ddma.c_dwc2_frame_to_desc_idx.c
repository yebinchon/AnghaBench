
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dwc2_qh {scalar_t__ dev_speed; } ;


 int MAX_DMA_DESC_NUM_GENERIC ;
 int MAX_DMA_DESC_NUM_HS_ISOC ;
 scalar_t__ USB_SPEED_HIGH ;

__attribute__((used)) static u8 dwc2_frame_to_desc_idx(struct dwc2_qh *qh, u16 frame_idx)
{
 if (qh->dev_speed == USB_SPEED_HIGH)

  return (frame_idx & ((MAX_DMA_DESC_NUM_HS_ISOC / 8) - 1)) * 8;
 else
  return frame_idx & (MAX_DMA_DESC_NUM_GENERIC - 1);
}
