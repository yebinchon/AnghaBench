
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned long long u64 ;
struct ad5933_state {int mclk_hz; unsigned long freq_start; unsigned long freq_inc; int client; } ;
typedef int __be32 ;




 int EINVAL ;
 int ad5933_i2c_write (int ,unsigned int,int,int *) ;
 int cpu_to_be32 (unsigned long long) ;
 int do_div (unsigned long long,int) ;

__attribute__((used)) static int ad5933_set_freq(struct ad5933_state *st,
      unsigned int reg, unsigned long freq)
{
 unsigned long long freqreg;
 union {
  __be32 d32;
  u8 d8[4];
 } dat;

 freqreg = (u64)freq * (u64)(1 << 27);
 do_div(freqreg, st->mclk_hz / 4);

 switch (reg) {
 case 128:
  st->freq_start = freq;
  break;
 case 129:
  st->freq_inc = freq;
  break;
 default:
  return -EINVAL;
 }

 dat.d32 = cpu_to_be32(freqreg);
 return ad5933_i2c_write(st->client, reg, 3, &dat.d8[1]);
}
