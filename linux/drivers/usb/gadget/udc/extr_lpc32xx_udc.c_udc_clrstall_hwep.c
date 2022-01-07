
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int dummy; } ;


 int CMD_SET_EP_STAT (int ) ;
 int DAT_WR_BYTE (int ) ;
 int udc_protocol_cmd_data_w (struct lpc32xx_udc*,int ,int ) ;

__attribute__((used)) static void udc_clrstall_hwep(struct lpc32xx_udc *udc, u32 hwep)
{
 udc_protocol_cmd_data_w(udc, CMD_SET_EP_STAT(hwep),
    DAT_WR_BYTE(0));
}
