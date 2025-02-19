
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;
typedef int s32 ;


 int MAX_TOLERANCE ;
 int abs (int) ;

__attribute__((used)) static bool simularity_compare(struct adapter *adapt, s32 resulta[][8],
          u8 c1, u8 c2)
{
 u32 i, j, diff, sim_bitmap = 0, bound;
 u8 final_candidate[2] = {0xFF, 0xFF};
 bool result = 1;
 s32 tmp1 = 0, tmp2 = 0;

 bound = 4;

 for (i = 0; i < bound; i++) {
  if ((i == 1) || (i == 3) || (i == 5) || (i == 7)) {
   if ((resulta[c1][i] & 0x00000200) != 0)
    tmp1 = resulta[c1][i] | 0xFFFFFC00;
   else
    tmp1 = resulta[c1][i];

   if ((resulta[c2][i] & 0x00000200) != 0)
    tmp2 = resulta[c2][i] | 0xFFFFFC00;
   else
    tmp2 = resulta[c2][i];
  } else {
   tmp1 = resulta[c1][i];
   tmp2 = resulta[c2][i];
  }

  diff = abs(tmp1 - tmp2);

  if (diff > MAX_TOLERANCE) {
   if ((i == 2 || i == 6) && !sim_bitmap) {
    if (resulta[c1][i] + resulta[c1][i+1] == 0)
     final_candidate[(i/4)] = c2;
    else if (resulta[c2][i] + resulta[c2][i+1] == 0)
     final_candidate[(i/4)] = c1;
    else
     sim_bitmap = sim_bitmap | (1<<i);
   } else {
    sim_bitmap = sim_bitmap | (1<<i);
   }
  }
 }

 if (sim_bitmap == 0) {
  for (i = 0; i < (bound/4); i++) {
   if (final_candidate[i] != 0xFF) {
    for (j = i*4; j < (i+1)*4-2; j++)
     resulta[3][j] = resulta[final_candidate[i]][j];
    result = 0;
   }
  }
  return result;
 } else {
  if (!(sim_bitmap & 0x03)) {
   for (i = 0; i < 2; i++)
    resulta[3][i] = resulta[c1][i];
  }
  if (!(sim_bitmap & 0x0c)) {
   for (i = 2; i < 4; i++)
    resulta[3][i] = resulta[c1][i];
  }

  if (!(sim_bitmap & 0x30)) {
   for (i = 4; i < 6; i++)
    resulta[3][i] = resulta[c1][i];
  }

  if (!(sim_bitmap & 0xc0)) {
   for (i = 6; i < 8; i++)
    resulta[3][i] = resulta[c1][i];
  }
  return 0;
 }
}
