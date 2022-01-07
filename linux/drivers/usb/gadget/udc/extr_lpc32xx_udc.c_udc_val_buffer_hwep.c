
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int dummy; } ;


 int CMD_VALID_BUF ;
 int udc_protocol_cmd_w (struct lpc32xx_udc*,int ) ;
 int udc_select_hwep (struct lpc32xx_udc*,int ) ;

__attribute__((used)) static void udc_val_buffer_hwep(struct lpc32xx_udc *udc, u32 hwep)
{
 udc_select_hwep(udc, hwep);
 udc_protocol_cmd_w(udc, CMD_VALID_BUF);
}
