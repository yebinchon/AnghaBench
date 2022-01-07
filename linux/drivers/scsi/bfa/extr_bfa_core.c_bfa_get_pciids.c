
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_pciid_s {int member_1; int const member_0; } ;


 int ARRAY_SIZE (struct bfa_pciid_s*) ;






void
bfa_get_pciids(struct bfa_pciid_s **pciids, int *npciids)
{
 static struct bfa_pciid_s __pciids[] = {
  {128, 129},
  {128, 130},
  {128, 132},
  {128, 131},
 };

 *npciids = ARRAY_SIZE(__pciids);
 *pciids = __pciids;
}
