
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPI_STATIC_PPR ;
 int* ppr_to_ps ;
 int sprint_frac (char*,int,int) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int period_to_str(char *buf, int period)
{
 int len, picosec;

 if (period < 0 || period > 0xff) {
  picosec = -1;
 } else if (period <= SPI_STATIC_PPR) {
  picosec = ppr_to_ps[period];
 } else {
  picosec = period * 4000;
 }

 if (picosec == -1) {
  len = sprintf(buf, "reserved");
 } else {
  len = sprint_frac(buf, picosec, 1000);
 }

 return len;
}
