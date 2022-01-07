
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iproc_msi {scalar_t__ eq_cpu; } ;


 int hwirq_to_canonical_hwirq (struct iproc_msi*,int) ;
 int iproc_msi_eq_offset (struct iproc_msi*,int) ;
 int readl (int*) ;

__attribute__((used)) static inline u32 decode_msi_hwirq(struct iproc_msi *msi, u32 eq, u32 head)
{
 u32 *msg, hwirq;
 unsigned int offs;

 offs = iproc_msi_eq_offset(msi, eq) + head * sizeof(u32);
 msg = (u32 *)(msi->eq_cpu + offs);
 hwirq = readl(msg);
 hwirq = (hwirq >> 5) + (hwirq & 0x1f);






 return hwirq_to_canonical_hwirq(msi, hwirq);
}
