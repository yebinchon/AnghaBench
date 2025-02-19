
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct c67x00_device {int dummy; } ;
typedef int __le16 ;


 int hpi_read_word (struct c67x00_device*,int) ;
 int hpi_read_words_le16 (struct c67x00_device*,int,int *,int) ;

void c67x00_ll_read_mem_le16(struct c67x00_device *dev, u16 addr,
        void *data, int len)
{
 u8 *buf = data;

 if (addr & 0x01) {

  u16 tmp;
  tmp = hpi_read_word(dev, addr - 1);
  *buf++ = (tmp >> 8) & 0x00ff;
  addr++;
  len--;
 }

 hpi_read_words_le16(dev, addr, (__le16 *)buf, len / 2);
 buf += len & ~0x01;
 addr += len & ~0x01;
 len &= 0x01;

 if (len) {
  u16 tmp;
  tmp = hpi_read_word(dev, addr);
  *buf = tmp & 0x00ff;
 }
}
