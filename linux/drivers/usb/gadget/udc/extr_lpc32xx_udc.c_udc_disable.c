
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int udp_baseaddr; scalar_t__* udca_v_base; } ;


 int CMD_CFG_DEV ;
 int CMD_SET_DEV_STAT ;
 int DAT_WR_BYTE (int ) ;
 int USBD_DMAINTEN (int ) ;
 int USBD_DMARCLR (int ) ;
 int USBD_EOTINTCLR (int ) ;
 int USBD_NDDRTINTCLR (int ) ;
 int USBD_SYSERRTINTCLR (int ) ;
 int USBD_UDCAH (int ) ;
 int uda_clear_hwepint (struct lpc32xx_udc*,int) ;
 int uda_disable_devint (struct lpc32xx_udc*,int) ;
 int uda_disable_hwepint (struct lpc32xx_udc*,int) ;
 int udc_disable_hwep (struct lpc32xx_udc*,int) ;
 int udc_ep_dma_disable (struct lpc32xx_udc*,int) ;
 int udc_protocol_cmd_data_w (struct lpc32xx_udc*,int ,int ) ;
 int udc_unrealize_hwep (struct lpc32xx_udc*,int) ;
 int writel (int,int ) ;

__attribute__((used)) static void udc_disable(struct lpc32xx_udc *udc)
{
 u32 i;


 udc_protocol_cmd_data_w(udc, CMD_CFG_DEV, DAT_WR_BYTE(0));
 udc_protocol_cmd_data_w(udc, CMD_SET_DEV_STAT, DAT_WR_BYTE(0));


 uda_disable_devint(udc, 0x3FF);


 for (i = 0; i < 32; i++) {
  uda_disable_hwepint(udc, i);
  uda_clear_hwepint(udc, i);
  udc_disable_hwep(udc, i);
  udc_unrealize_hwep(udc, i);
  udc->udca_v_base[i] = 0;


  udc_ep_dma_disable(udc, i);
  writel((1 << i), USBD_EOTINTCLR(udc->udp_baseaddr));
  writel((1 << i), USBD_NDDRTINTCLR(udc->udp_baseaddr));
  writel((1 << i), USBD_SYSERRTINTCLR(udc->udp_baseaddr));
  writel((1 << i), USBD_DMARCLR(udc->udp_baseaddr));
 }


 writel(0, USBD_DMAINTEN(udc->udp_baseaddr));

 writel(0, USBD_UDCAH(udc->udp_baseaddr));
}
