
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int dummy; } ;


 int CMD_SET_ADDR ;
 int DAT_WR_BYTE (int) ;
 int DEV_EN ;
 int udc_protocol_cmd_data_w (struct lpc32xx_udc*,int ,int ) ;

__attribute__((used)) static void udc_set_address(struct lpc32xx_udc *udc, u32 addr)
{


 udc_protocol_cmd_data_w(udc, CMD_SET_ADDR,
    DAT_WR_BYTE(DEV_EN | addr));
}
