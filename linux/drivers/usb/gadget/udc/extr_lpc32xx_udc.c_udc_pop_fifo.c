
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef void* u16 ;
struct lpc32xx_udc {int udp_baseaddr; } ;


 int USBD_RXDATA (int ) ;
 void* readl (int ) ;

__attribute__((used)) static void udc_pop_fifo(struct lpc32xx_udc *udc, u8 *data, u32 bytes)
{
 int n, i, bl;
 u16 *p16;
 u32 *p32, tmp, cbytes;


 switch (((uintptr_t) data) & 0x3) {
 case 0:
  p32 = (u32 *) data;
  cbytes = (bytes & ~0x3);


  for (n = 0; n < cbytes; n += 4)
   *p32++ = readl(USBD_RXDATA(udc->udp_baseaddr));


  bl = bytes - cbytes;
  if (bl) {
   tmp = readl(USBD_RXDATA(udc->udp_baseaddr));
   for (n = 0; n < bl; n++)
    data[cbytes + n] = ((tmp >> (n * 8)) & 0xFF);

  }
  break;

 case 1:
 case 3:

  for (n = 0; n < bytes; n += 4) {
   tmp = readl(USBD_RXDATA(udc->udp_baseaddr));

   bl = bytes - n;
   if (bl > 4)
    bl = 4;

   for (i = 0; i < bl; i++)
    data[n + i] = (u8) ((tmp >> (i * 8)) & 0xFF);
  }
  break;

 case 2:
  p16 = (u16 *) data;
  cbytes = (bytes & ~0x3);


  for (n = 0; n < cbytes; n += 4) {
   tmp = readl(USBD_RXDATA(udc->udp_baseaddr));
   *p16++ = (u16)(tmp & 0xFFFF);
   *p16++ = (u16)((tmp >> 16) & 0xFFFF);
  }


  bl = bytes - cbytes;
  if (bl) {
   tmp = readl(USBD_RXDATA(udc->udp_baseaddr));
   for (n = 0; n < bl; n++)
    data[cbytes + n] = ((tmp >> (n * 8)) & 0xFF);
  }
  break;
 }
}
