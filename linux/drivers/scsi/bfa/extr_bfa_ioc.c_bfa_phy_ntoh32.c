
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static void
bfa_phy_ntoh32(u32 *obuf, u32 *ibuf, int sz)
{
 int i, m = sz >> 2;

 for (i = 0; i < m; i++)
  obuf[i] = be32_to_cpu(ibuf[i]);
}
