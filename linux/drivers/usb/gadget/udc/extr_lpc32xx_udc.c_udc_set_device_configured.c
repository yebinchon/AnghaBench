
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_udc {int dummy; } ;


 int CMD_CFG_DEV ;
 int CONF_DVICE ;
 int DAT_WR_BYTE (int ) ;
 int udc_protocol_cmd_data_w (struct lpc32xx_udc*,int ,int ) ;

__attribute__((used)) static inline void udc_set_device_configured(struct lpc32xx_udc *udc)
{
 udc_protocol_cmd_data_w(udc, CMD_CFG_DEV, DAT_WR_BYTE(CONF_DVICE));
}
