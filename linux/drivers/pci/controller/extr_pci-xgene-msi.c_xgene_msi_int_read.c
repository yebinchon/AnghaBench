
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_msi {scalar_t__ msi_regs; } ;


 scalar_t__ MSI_INT0 ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 xgene_msi_int_read(struct xgene_msi *msi, u32 msi_grp)
{
 return readl_relaxed(msi->msi_regs + MSI_INT0 + (msi_grp << 16));
}
