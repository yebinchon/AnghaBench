
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;


 int MAX_DMA_DESC_NUM_GENERIC ;
 int MAX_DMA_DESC_NUM_HS_ISOC ;
 scalar_t__ USB_SPEED_HIGH ;

__attribute__((used)) static u16 dwc2_desclist_idx_inc(u16 idx, u16 inc, u8 speed)
{
 return (idx + inc) &
  ((speed == USB_SPEED_HIGH ? MAX_DMA_DESC_NUM_HS_ISOC :
    MAX_DMA_DESC_NUM_GENERIC) - 1);
}
