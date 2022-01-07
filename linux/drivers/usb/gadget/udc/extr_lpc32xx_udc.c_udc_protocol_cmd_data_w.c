
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int dummy; } ;


 int udc_protocol_cmd_w (struct lpc32xx_udc*,int ) ;

__attribute__((used)) static inline void udc_protocol_cmd_data_w(struct lpc32xx_udc *udc, u32 cmd,
        u32 data)
{
 udc_protocol_cmd_w(udc, cmd);
 udc_protocol_cmd_w(udc, data);
}
