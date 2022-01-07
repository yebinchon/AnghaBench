
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ longccb; } ;
struct dax_ccb {TYPE_1__ hdr; } ;


 int dax_dbg (char*,...) ;

__attribute__((used)) static void dax_prt_ccbs(struct dax_ccb *ccb, int nelem)
{
 int i, j;
 u64 *ccbp;

 dax_dbg("ccb buffer:");
 for (i = 0; i < nelem; i++) {
  ccbp = (u64 *)&ccb[i];
  dax_dbg(" %sccb[%d]", ccb[i].hdr.longccb ? "long " : "", i);
  for (j = 0; j < 8; j++)
   dax_dbg("\tccb[%d].dwords[%d]=0x%llx",
    i, j, *(ccbp + j));
 }
}
