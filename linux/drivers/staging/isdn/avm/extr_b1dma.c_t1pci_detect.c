
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int avmcard ;


 int ReadReg (int *,int) ;
 scalar_t__ WriteReg (int *,int,int) ;
 int b1dma_detect (int *) ;

int t1pci_detect(avmcard *card)
{
 int ret;

 if ((ret = b1dma_detect(card)) != 0)
  return ret;



 if (WriteReg(card, 0x80001000, 0x11) != 0
     || WriteReg(card, 0x80101000, 0x22) != 0
     || WriteReg(card, 0x80201000, 0x33) != 0
     || WriteReg(card, 0x80301000, 0x44) != 0)
  return 6;

 if (ReadReg(card, 0x80001000) != 0x11
     || ReadReg(card, 0x80101000) != 0x22
     || ReadReg(card, 0x80201000) != 0x33
     || ReadReg(card, 0x80301000) != 0x44)
  return 7;

 if (WriteReg(card, 0x80001000, 0x55) != 0
     || WriteReg(card, 0x80101000, 0x66) != 0
     || WriteReg(card, 0x80201000, 0x77) != 0
     || WriteReg(card, 0x80301000, 0x88) != 0)
  return 8;

 if (ReadReg(card, 0x80001000) != 0x55
     || ReadReg(card, 0x80101000) != 0x66
     || ReadReg(card, 0x80201000) != 0x77
     || ReadReg(card, 0x80301000) != 0x88)
  return 9;

 return 0;
}
