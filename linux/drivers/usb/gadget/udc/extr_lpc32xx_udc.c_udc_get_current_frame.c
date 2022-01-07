
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lpc32xx_udc {int dummy; } ;


 int CMD_RD_FRAME ;
 int DAT_RD_FRAME ;
 scalar_t__ udc_protocol_cmd_r (struct lpc32xx_udc*,int ) ;
 int udc_protocol_cmd_w (struct lpc32xx_udc*,int ) ;

__attribute__((used)) static u16 udc_get_current_frame(struct lpc32xx_udc *udc)
{
 u16 flo, fhi;

 udc_protocol_cmd_w(udc, CMD_RD_FRAME);
 flo = (u16) udc_protocol_cmd_r(udc, DAT_RD_FRAME);
 fhi = (u16) udc_protocol_cmd_r(udc, DAT_RD_FRAME);

 return (fhi << 8) | flo;
}
