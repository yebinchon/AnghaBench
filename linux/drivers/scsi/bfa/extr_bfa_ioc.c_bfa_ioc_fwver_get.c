
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bfi_ioc_image_hdr_s {int dummy; } ;
struct TYPE_2__ {int smem_page_start; int host_page_num_fn; int smem_pg0; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;


 int PSS_SMEM_PGNUM (int ,int) ;
 int PSS_SMEM_PGOFF (int) ;
 int bfa_mem_read (int ,int) ;
 int writel (int,int ) ;

void
bfa_ioc_fwver_get(struct bfa_ioc_s *ioc, struct bfi_ioc_image_hdr_s *fwhdr)
{
 u32 pgnum, pgoff;
 u32 loff = 0;
 int i;
 u32 *fwsig = (u32 *) fwhdr;

 pgnum = PSS_SMEM_PGNUM(ioc->ioc_regs.smem_pg0, loff);
 pgoff = PSS_SMEM_PGOFF(loff);
 writel(pgnum, ioc->ioc_regs.host_page_num_fn);

 for (i = 0; i < (sizeof(struct bfi_ioc_image_hdr_s) / sizeof(u32));
      i++) {
  fwsig[i] =
   bfa_mem_read(ioc->ioc_regs.smem_page_start, loff);
  loff += sizeof(u32);
 }
}
