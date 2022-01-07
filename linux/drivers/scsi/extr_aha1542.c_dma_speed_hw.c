
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 dma_speed_hw(int dma_speed)
{
 switch (dma_speed) {
 case 5:
  return 0x00;
 case 6:
  return 0x04;
 case 7:
  return 0x01;
 case 8:
  return 0x02;
 case 10:
  return 0x03;
 }

 return 0xff;
}
