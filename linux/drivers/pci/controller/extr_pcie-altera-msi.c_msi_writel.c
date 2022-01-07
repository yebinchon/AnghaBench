
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct altera_msi {scalar_t__ const csr_base; } ;


 int writel_relaxed (scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static inline void msi_writel(struct altera_msi *msi, const u32 value,
         const u32 reg)
{
 writel_relaxed(value, msi->csr_base + reg);
}
