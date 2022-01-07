
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct sfp_mem_s {int dummy; } ;
struct bfa_sfp_s {int * dbuf_kva; int dbuf_pa; } ;


 int BFA_DMA_ALIGN_SZ ;
 scalar_t__ BFA_ROUNDUP (int,int ) ;
 int memset (int *,int ,int) ;

void
bfa_sfp_memclaim(struct bfa_sfp_s *sfp, u8 *dm_kva, u64 dm_pa)
{
 sfp->dbuf_kva = dm_kva;
 sfp->dbuf_pa = dm_pa;
 memset(sfp->dbuf_kva, 0, sizeof(struct sfp_mem_s));

 dm_kva += BFA_ROUNDUP(sizeof(struct sfp_mem_s), BFA_DMA_ALIGN_SZ);
 dm_pa += BFA_ROUNDUP(sizeof(struct sfp_mem_s), BFA_DMA_ALIGN_SZ);
}
