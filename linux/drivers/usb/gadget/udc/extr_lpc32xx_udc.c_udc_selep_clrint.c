
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int dummy; } ;


 int CMD_SEL_EP_CLRI (int ) ;
 int DAT_SEL_EP_CLRI (int ) ;
 int udc_protocol_cmd_r (struct lpc32xx_udc*,int ) ;
 int udc_protocol_cmd_w (struct lpc32xx_udc*,int ) ;

__attribute__((used)) static u32 udc_selep_clrint(struct lpc32xx_udc *udc, u32 hwep)
{
 udc_protocol_cmd_w(udc, CMD_SEL_EP_CLRI(hwep));
 return udc_protocol_cmd_r(udc, DAT_SEL_EP_CLRI(hwep));
}
