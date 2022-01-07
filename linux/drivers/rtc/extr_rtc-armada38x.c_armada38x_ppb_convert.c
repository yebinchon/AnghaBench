
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long div_s64 (long long,long) ;

__attribute__((used)) static long armada38x_ppb_convert(long ppb)
{
 long div = ppb + 1000000000L;

 return div_s64(1000000000000000000LL + div / 2, div) - 1000000000L;
}
