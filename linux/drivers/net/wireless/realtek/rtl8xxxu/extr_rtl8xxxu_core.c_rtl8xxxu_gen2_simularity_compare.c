
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8xxxu_priv {int tx_paths; } ;


 int MAX_TOLERANCE ;

bool rtl8xxxu_gen2_simularity_compare(struct rtl8xxxu_priv *priv,
          int result[][8], int c1, int c2)
{
 u32 i, j, diff, simubitmap, bound = 0;
 int candidate[2] = {-1, -1};
 int tmp1, tmp2;
 bool retval = 1;

 if (priv->tx_paths > 1)
  bound = 8;
 else
  bound = 4;

 simubitmap = 0;

 for (i = 0; i < bound; i++) {
  if (i & 1) {
   if ((result[c1][i] & 0x00000200))
    tmp1 = result[c1][i] | 0xfffffc00;
   else
    tmp1 = result[c1][i];

   if ((result[c2][i]& 0x00000200))
    tmp2 = result[c2][i] | 0xfffffc00;
   else
    tmp2 = result[c2][i];
  } else {
   tmp1 = result[c1][i];
   tmp2 = result[c2][i];
  }

  diff = (tmp1 > tmp2) ? (tmp1 - tmp2) : (tmp2 - tmp1);

  if (diff > MAX_TOLERANCE) {
   if ((i == 2 || i == 6) && !simubitmap) {
    if (result[c1][i] + result[c1][i + 1] == 0)
     candidate[(i / 4)] = c2;
    else if (result[c2][i] + result[c2][i + 1] == 0)
     candidate[(i / 4)] = c1;
    else
     simubitmap = simubitmap | (1 << i);
   } else {
    simubitmap = simubitmap | (1 << i);
   }
  }
 }

 if (simubitmap == 0) {
  for (i = 0; i < (bound / 4); i++) {
   if (candidate[i] >= 0) {
    for (j = i * 4; j < (i + 1) * 4 - 2; j++)
     result[3][j] = result[candidate[i]][j];
    retval = 0;
   }
  }
  return retval;
 } else {
  if (!(simubitmap & 0x03)) {

   for (i = 0; i < 2; i++)
    result[3][i] = result[c1][i];
  }

  if (!(simubitmap & 0x0c)) {

   for (i = 2; i < 4; i++)
    result[3][i] = result[c1][i];
  }

  if (!(simubitmap & 0x30) && priv->tx_paths > 1) {

   for (i = 4; i < 6; i++)
    result[3][i] = result[c1][i];
  }

  if (!(simubitmap & 0x30) && priv->tx_paths > 1) {

   for (i = 6; i < 8; i++)
    result[3][i] = result[c1][i];
  }
 }

 return 0;
}
