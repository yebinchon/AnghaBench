
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int INT_MAX ;
 int pr_warn (char*,int,unsigned long) ;

__attribute__((used)) static void hz_to_spi_baud(char *pbr, char *br, int speed_hz,
      unsigned long clkrate)
{

 int pbr_tbl[4] = {2, 3, 5, 7};
 int brs[16] = { 2, 4, 6, 8,
   16, 32, 64, 128,
   256, 512, 1024, 2048,
   4096, 8192, 16384, 32768 };
 int scale_needed, scale, minscale = INT_MAX;
 int i, j;

 scale_needed = clkrate / speed_hz;
 if (clkrate % speed_hz)
  scale_needed++;

 for (i = 0; i < ARRAY_SIZE(brs); i++)
  for (j = 0; j < ARRAY_SIZE(pbr_tbl); j++) {
   scale = brs[i] * pbr_tbl[j];
   if (scale >= scale_needed) {
    if (scale < minscale) {
     minscale = scale;
     *br = i;
     *pbr = j;
    }
    break;
   }
  }

 if (minscale == INT_MAX) {
  pr_warn("Can not find valid baud rate,speed_hz is %d,clkrate is %ld, we use the max prescaler value.\n",
   speed_hz, clkrate);
  *pbr = ARRAY_SIZE(pbr_tbl) - 1;
  *br = ARRAY_SIZE(brs) - 1;
 }
}
