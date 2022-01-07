
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef scalar_t__ u32 ;


 int ARRAY_SIZE (int*) ;
 int INT_MAX ;
 int NSEC_PER_SEC ;
 int SPI_CTAR_SCALE_BITS ;
 int div_u64_rem (unsigned long,int ,scalar_t__*) ;
 int pr_warn (char*,int,unsigned long) ;

__attribute__((used)) static void ns_delay_scale(char *psc, char *sc, int delay_ns,
      unsigned long clkrate)
{
 int scale_needed, scale, minscale = INT_MAX;
 int pscale_tbl[4] = {1, 3, 5, 7};
 u32 remainder;
 int i, j;

 scale_needed = div_u64_rem((u64)delay_ns * clkrate, NSEC_PER_SEC,
       &remainder);
 if (remainder)
  scale_needed++;

 for (i = 0; i < ARRAY_SIZE(pscale_tbl); i++)
  for (j = 0; j <= SPI_CTAR_SCALE_BITS; j++) {
   scale = pscale_tbl[i] * (2 << j);
   if (scale >= scale_needed) {
    if (scale < minscale) {
     minscale = scale;
     *psc = i;
     *sc = j;
    }
    break;
   }
  }

 if (minscale == INT_MAX) {
  pr_warn("Cannot find correct scale values for %dns delay at clkrate %ld, using max prescaler value",
   delay_ns, clkrate);
  *psc = ARRAY_SIZE(pscale_tbl) - 1;
  *sc = SPI_CTAR_SCALE_BITS;
 }
}
