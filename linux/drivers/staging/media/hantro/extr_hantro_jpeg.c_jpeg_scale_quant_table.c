
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;

__attribute__((used)) static void
jpeg_scale_quant_table(unsigned char *q_tab,
         const unsigned char *tab, int scale)
{
 unsigned int temp;
 int i;

 for (i = 0; i < 64; i++) {
  temp = DIV_ROUND_CLOSEST((unsigned int)tab[i] * scale, 100);
  if (temp <= 0)
   temp = 1;
  if (temp > 255)
   temp = 255;
  q_tab[i] = (unsigned char)temp;
 }
}
