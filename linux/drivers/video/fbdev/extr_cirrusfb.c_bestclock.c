
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;

__attribute__((used)) static void bestclock(long freq, int *nom, int *den, int *div)
{
 int n, d;
 long h, diff;

 assert(nom != ((void*)0));
 assert(den != ((void*)0));
 assert(div != ((void*)0));

 *nom = 0;
 *den = 0;
 *div = 0;

 if (freq < 8000)
  freq = 8000;

 diff = freq;

 for (n = 32; n < 128; n++) {
  int s = 0;

  d = (14318 * n) / freq;
  if ((d >= 7) && (d <= 63)) {
   int temp = d;

   if (temp > 31) {
    s = 1;
    temp >>= 1;
   }
   h = ((14318 * n) / temp) >> s;
   h = h > freq ? h - freq : freq - h;
   if (h < diff) {
    diff = h;
    *nom = n;
    *den = temp;
    *div = s;
   }
  }
  d++;
  if ((d >= 7) && (d <= 63)) {
   if (d > 31) {
    s = 1;
    d >>= 1;
   }
   h = ((14318 * n) / d) >> s;
   h = h > freq ? h - freq : freq - h;
   if (h < diff) {
    diff = h;
    *nom = n;
    *den = d;
    *div = s;
   }
  }
 }
}
