
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;
 int DIV_ROUND_UP (int,int ) ;

__attribute__((used)) static inline int scrub_calc_parity_bitmap_len(int nsectors)
{
 return DIV_ROUND_UP(nsectors, BITS_PER_LONG) * sizeof(long);
}
