
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* dim2; } ;
struct TYPE_3__ {int MDAT0; } ;


 int dim2_transfer_madr (int ) ;
 TYPE_2__ g ;
 int readl (int *) ;

__attribute__((used)) static u32 dim2_read_ctr(u32 ctr_addr, u16 mdat_idx)
{
 dim2_transfer_madr(ctr_addr);

 return readl((&g.dim2->MDAT0) + mdat_idx);
}
