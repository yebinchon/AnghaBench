
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct atp_unit {size_t* pciport; } ;


 int outl (int ,size_t) ;

__attribute__((used)) static inline void atp_writel_pci(struct atp_unit *atp, u8 channel, u8 reg, u32 val)
{
 outl(val, atp->pciport[channel] + reg);
}
