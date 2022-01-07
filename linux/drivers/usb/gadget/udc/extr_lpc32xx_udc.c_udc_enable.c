
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lpc32xx_udc {int udca_p_base; scalar_t__ dev_status; int udp_baseaddr; struct lpc32xx_ep* ep; } ;
struct TYPE_2__ {int maxpacket; } ;
struct lpc32xx_ep {TYPE_1__ ep; } ;


 int CMD_SET_DEV_STAT ;
 int DAT_WR_BYTE (int ) ;
 int DEV_CON ;
 int USBD_DEVINTCLR (int ) ;
 int USBD_DEVINTPRI (int ) ;
 int USBD_DEV_STAT ;
 int USBD_DMAINTEN (int ) ;
 int USBD_EOT_INT ;
 int USBD_EPINTPRI (int ) ;
 int USBD_EP_FAST ;
 int USBD_EP_SLOW ;
 int USBD_ERR_INT ;
 int USBD_SYS_ERR_INT ;
 int USBD_UDCAH (int ) ;
 int uda_clear_devint (struct lpc32xx_udc*,int) ;
 int uda_enable_devint (struct lpc32xx_udc*,int) ;
 int uda_enable_hwepint (struct lpc32xx_udc*,int) ;
 int udc_clr_buffer_hwep (struct lpc32xx_udc*,int) ;
 int udc_clrstall_hwep (struct lpc32xx_udc*,int) ;
 int udc_disable (struct lpc32xx_udc*) ;
 int udc_protocol_cmd_data_w (struct lpc32xx_udc*,int ,int ) ;
 int udc_realize_hwep (struct lpc32xx_udc*,int,int ) ;
 int udc_select_hwep (struct lpc32xx_udc*,int) ;
 int udc_set_address (struct lpc32xx_udc*,int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void udc_enable(struct lpc32xx_udc *udc)
{
 u32 i;
 struct lpc32xx_ep *ep = &udc->ep[0];


 udc_disable(udc);


 udc_protocol_cmd_data_w(udc, CMD_SET_DEV_STAT, DAT_WR_BYTE(DEV_CON));


 writel(USBD_EP_FAST, USBD_DEVINTPRI(udc->udp_baseaddr));
 writel(0xFFFF, USBD_EPINTPRI(udc->udp_baseaddr));


 writel(0x3FF, USBD_DEVINTCLR(udc->udp_baseaddr));


 writel(udc->udca_p_base, USBD_UDCAH(udc->udp_baseaddr));


 for (i = 0; i <= 1; i++) {
  udc_realize_hwep(udc, i, ep->ep.maxpacket);
  uda_enable_hwepint(udc, i);
  udc_select_hwep(udc, i);
  udc_clrstall_hwep(udc, i);
  udc_clr_buffer_hwep(udc, i);
 }


 uda_clear_devint(udc, (USBD_ERR_INT | USBD_DEV_STAT | USBD_EP_SLOW |
          USBD_EP_FAST));
 uda_enable_devint(udc, (USBD_ERR_INT | USBD_DEV_STAT | USBD_EP_SLOW |
    USBD_EP_FAST));



 udc_set_address(udc, 0);
 udc_set_address(udc, 0);


 writel((USBD_SYS_ERR_INT | USBD_EOT_INT),
       USBD_DMAINTEN(udc->udp_baseaddr));

 udc->dev_status = 0;
}
