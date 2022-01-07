
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memset (int*,int ,int) ;
 int mv_printk (char*,int,int,int,int) ;

__attribute__((used)) static void mvs_set_sense(u8 *buffer, int len, int d_sense,
  int key, int asc, int ascq)
{
 memset(buffer, 0, len);

 if (d_sense) {

  if (len < 4) {
   mv_printk("Length %d of sense buffer too small to "
    "fit sense %x:%x:%x", len, key, asc, ascq);
  }

  buffer[0] = 0x72;
  if (len > 1)
   buffer[1] = key;
  if (len > 2)
   buffer[2] = asc;
  if (len > 3)
   buffer[3] = ascq;
 } else {
  if (len < 14) {
   mv_printk("Length %d of sense buffer too small to "
    "fit sense %x:%x:%x", len, key, asc, ascq);
  }

  buffer[0] = 0x70;
  if (len > 2)
   buffer[2] = key;
  if (len > 7)
   buffer[7] = 0x0a;
  if (len > 12)
   buffer[12] = asc;
  if (len > 13)
   buffer[13] = ascq;
 }

 return;
}
