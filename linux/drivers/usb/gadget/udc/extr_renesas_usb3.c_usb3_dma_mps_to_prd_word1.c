
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int maxpacket; } ;
struct renesas_usb3_ep {TYPE_1__ ep; } ;


 int USB3_PRD1_MPS_1024 ;
 int USB3_PRD1_MPS_16 ;
 int USB3_PRD1_MPS_32 ;
 int USB3_PRD1_MPS_512 ;
 int USB3_PRD1_MPS_64 ;
 int USB3_PRD1_MPS_8 ;
 int USB3_PRD1_MPS_RESERVED ;

__attribute__((used)) static u32 usb3_dma_mps_to_prd_word1(struct renesas_usb3_ep *usb3_ep)
{
 switch (usb3_ep->ep.maxpacket) {
 case 8:
  return USB3_PRD1_MPS_8;
 case 16:
  return USB3_PRD1_MPS_16;
 case 32:
  return USB3_PRD1_MPS_32;
 case 64:
  return USB3_PRD1_MPS_64;
 case 512:
  return USB3_PRD1_MPS_512;
 case 1024:
  return USB3_PRD1_MPS_1024;
 default:
  return USB3_PRD1_MPS_RESERVED;
 }
}
