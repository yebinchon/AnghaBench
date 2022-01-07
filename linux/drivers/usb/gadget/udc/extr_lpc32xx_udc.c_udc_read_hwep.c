
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct lpc32xx_udc {int udp_baseaddr; int dev; } ;


 int CTRL_RD_EN ;
 int PKT_LNGTH_MASK ;
 int PKT_RDY ;
 int USBD_CTRL (int ) ;
 int USBD_RXPLEN (int ) ;
 int dev_dbg (int ,char*) ;
 int readl (int ) ;
 int udc_clr_buffer_hwep (struct lpc32xx_udc*,int) ;
 int udc_pop_fifo (struct lpc32xx_udc*,int *,int) ;
 int writel (int,int ) ;

__attribute__((used)) static u32 udc_read_hwep(struct lpc32xx_udc *udc, u32 hwep, u32 *data,
    u32 bytes)
{
 u32 tmpv;
 int to = 1000;
 u32 tmp, hwrep = ((hwep & 0x1E) << 1) | CTRL_RD_EN;


 writel(hwrep, USBD_CTRL(udc->udp_baseaddr));


 while ((((tmpv = readl(USBD_RXPLEN(udc->udp_baseaddr))) &
   PKT_RDY) == 0) && (to > 0))
  to--;
 if (!to)
  dev_dbg(udc->dev, "No packet ready on FIFO EP read\n");


 tmp = tmpv & PKT_LNGTH_MASK;
 if (bytes < tmp)
  tmp = bytes;

 if ((tmp > 0) && (data != ((void*)0)))
  udc_pop_fifo(udc, (u8 *) data, tmp);

 writel(((hwep & 0x1E) << 1), USBD_CTRL(udc->udp_baseaddr));


 udc_clr_buffer_hwep(udc, hwep);

 return tmp;
}
