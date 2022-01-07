
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct bfi_ioc_attr_s {int dummy; } ;
struct TYPE_2__ {int pa; int * kva; } ;
struct bfa_ioc_s {struct bfi_ioc_attr_s* attr; TYPE_1__ attr_dma; } ;



void
bfa_ioc_mem_claim(struct bfa_ioc_s *ioc, u8 *dm_kva, u64 dm_pa)
{



 ioc->attr_dma.kva = dm_kva;
 ioc->attr_dma.pa = dm_pa;
 ioc->attr = (struct bfi_ioc_attr_s *) dm_kva;
}
