
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int avmcard ;


 int ReadReg (int *,int) ;
 scalar_t__ WriteReg (int *,int,int) ;
 int b1dma_detect (int *) ;

int b1pciv4_detect(avmcard *card)
{
 int ret, i;

 if ((ret = b1dma_detect(card)) != 0)
  return ret;

 for (i = 0; i < 5; i++) {
  if (WriteReg(card, 0x80A00000, 0x21) != 0)
   return 6;
  if ((ReadReg(card, 0x80A00000) & 0x01) != 0x01)
   return 7;
 }
 for (i = 0; i < 5; i++) {
  if (WriteReg(card, 0x80A00000, 0x20) != 0)
   return 8;
  if ((ReadReg(card, 0x80A00000) & 0x01) != 0x00)
   return 9;
 }

 return 0;
}
