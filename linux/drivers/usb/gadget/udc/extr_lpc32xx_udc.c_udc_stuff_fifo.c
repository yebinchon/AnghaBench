
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct lpc32xx_udc {int udp_baseaddr; } ;


 int USBD_TXDATA (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void udc_stuff_fifo(struct lpc32xx_udc *udc, u8 *data, u32 bytes)
{
 int n, i, bl;
 u16 *p16;
 u32 *p32, tmp, cbytes;


 switch (((uintptr_t) data) & 0x3) {
 case 0:
  p32 = (u32 *) data;
  cbytes = (bytes & ~0x3);


  for (n = 0; n < cbytes; n += 4)
   writel(*p32++, USBD_TXDATA(udc->udp_baseaddr));


  bl = bytes - cbytes;
  if (bl) {
   tmp = 0;
   for (n = 0; n < bl; n++)
    tmp |= data[cbytes + n] << (n * 8);

   writel(tmp, USBD_TXDATA(udc->udp_baseaddr));
  }
  break;

 case 1:
 case 3:

  for (n = 0; n < bytes; n += 4) {
   bl = bytes - n;
   if (bl > 4)
    bl = 4;

   tmp = 0;
   for (i = 0; i < bl; i++)
    tmp |= data[n + i] << (i * 8);

   writel(tmp, USBD_TXDATA(udc->udp_baseaddr));
  }
  break;

 case 2:
  p16 = (u16 *) data;
  cbytes = (bytes & ~0x3);


  for (n = 0; n < cbytes; n += 4) {
   tmp = *p16++ & 0xFFFF;
   tmp |= (*p16++ & 0xFFFF) << 16;
   writel(tmp, USBD_TXDATA(udc->udp_baseaddr));
  }


  bl = bytes - cbytes;
  if (bl) {
   tmp = 0;
   for (n = 0; n < bl; n++)
    tmp |= data[cbytes + n] << (n * 8);

   writel(tmp, USBD_TXDATA(udc->udp_baseaddr));
  }
  break;
 }
}
