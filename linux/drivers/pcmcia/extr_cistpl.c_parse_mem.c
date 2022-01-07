
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_5__ {int nwin; TYPE_1__* win; } ;
typedef TYPE_2__ cistpl_mem_t ;
struct TYPE_4__ {int len; int card_addr; int host_addr; } ;



__attribute__((used)) static u_char *parse_mem(u_char *p, u_char *q, cistpl_mem_t *mem)
{
 int i, j, asz, lsz, has_ha;
 u_int len, ca, ha;

 if (p == q)
  return ((void*)0);

 mem->nwin = (*p & 0x07) + 1;
 lsz = (*p & 0x18) >> 3;
 asz = (*p & 0x60) >> 5;
 has_ha = (*p & 0x80);
 if (++p == q)
  return ((void*)0);

 for (i = 0; i < mem->nwin; i++) {
  len = ca = ha = 0;
  for (j = 0; j < lsz; j++, p++) {
   if (p == q)
    return ((void*)0);
   len += *p << (j*8);
  }
  for (j = 0; j < asz; j++, p++) {
   if (p == q)
    return ((void*)0);
   ca += *p << (j*8);
  }
  if (has_ha)
   for (j = 0; j < asz; j++, p++) {
    if (p == q)
     return ((void*)0);
    ha += *p << (j*8);
   }
  mem->win[i].len = len << 8;
  mem->win[i].card_addr = ca << 8;
  mem->win[i].host_addr = ha << 8;
 }
 return p;
}
