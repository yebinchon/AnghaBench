
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SAB_BASE_BAUD ;

__attribute__((used)) static void calc_ebrg(int baud, int *n_ret, int *m_ret)
{
 int n, m;

 if (baud == 0) {
  *n_ret = 0;
  *m_ret = 0;
  return;
 }






 n = (SAB_BASE_BAUD * 10) / baud;
 m = 0;
 while (n >= 640) {
  n = n / 2;
  m++;
 }
 n = (n+5) / 10;




 if ((m == 0) && ((n & 1) == 0)) {
  n = n / 2;
  m++;
 }
 *n_ret = n - 1;
 *m_ret = m;
}
