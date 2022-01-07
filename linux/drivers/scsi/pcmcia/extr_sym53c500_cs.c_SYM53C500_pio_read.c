
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIO_FIFO ;
 int PIO_STATUS ;
 int REG1 (int) ;
 void* inb (int) ;
 int insl (int,unsigned char*,int) ;

__attribute__((used)) static __inline__ int
SYM53C500_pio_read(int fast_pio, int base, unsigned char *request, unsigned int reqlen)
{
 int i;
 int len;

 REG1(base);
 while (reqlen) {
  i = inb(base + PIO_STATUS);

  if (i & 0x80)
   return 0;

  switch (i & 0x1e) {
  default:
  case 0x10:
   len = 0;
   break;
  case 0x0:
   len = 1;
   break;
  case 0x8:
   len = 42;
   break;
  case 0xc:
   len = 84;
   break;
  case 0xe:
   len = 128;
   break;
  }

  if ((i & 0x40) && len == 0) {
   return 0;
  }

  if (len) {
   if (len > reqlen)
    len = reqlen;

   if (fast_pio && len > 3) {
    insl(base + PIO_FIFO, request, len >> 2);
    request += len & 0xfc;
    reqlen -= len & 0xfc;
   } else {
    while (len--) {
     *request++ = inb(base + PIO_FIFO);
     reqlen--;
    }
   }
  }
 }
 return 0;
}
