
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct lpc32xx_udc {int udp_baseaddr; } ;


 int CTRL_WR_EN ;
 int USBD_CTRL (int ) ;
 int USBD_TXDATA (int ) ;
 int USBD_TXPLEN (int ) ;
 int udc_stuff_fifo (struct lpc32xx_udc*,int *,int) ;
 int udc_val_buffer_hwep (struct lpc32xx_udc*,int) ;
 int writel (int,int ) ;

__attribute__((used)) static void udc_write_hwep(struct lpc32xx_udc *udc, u32 hwep, u32 *data,
      u32 bytes)
{
 u32 hwwep = ((hwep & 0x1E) << 1) | CTRL_WR_EN;

 if ((bytes > 0) && (data == ((void*)0)))
  return;


 writel(hwwep, USBD_CTRL(udc->udp_baseaddr));

 writel(bytes, USBD_TXPLEN(udc->udp_baseaddr));


 if (bytes == 0)
  writel(0, USBD_TXDATA(udc->udp_baseaddr));
 else
  udc_stuff_fifo(udc, (u8 *) data, bytes);

 writel(((hwep & 0x1E) << 1), USBD_CTRL(udc->udp_baseaddr));

 udc_val_buffer_hwep(udc, hwep);
}
