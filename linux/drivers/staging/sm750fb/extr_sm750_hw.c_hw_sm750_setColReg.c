
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
struct lynxfb_crtc {size_t channel; } ;




 int poke32 (unsigned int,int) ;

int hw_sm750_setColReg(struct lynxfb_crtc *crtc, ushort index,
         ushort red, ushort green, ushort blue)
{
 static unsigned int add[] = {128, 129};

 poke32(add[crtc->channel] + index * 4,
        (red << 16) | (green << 8) | blue);
 return 0;
}
