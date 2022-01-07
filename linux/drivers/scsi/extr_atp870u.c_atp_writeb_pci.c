
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct atp_unit {size_t* pciport; } ;


 int outb (size_t,size_t) ;

__attribute__((used)) static inline void atp_writeb_pci(struct atp_unit *atp, u8 channel, u8 reg, u8 val)
{
 outb(val, atp->pciport[channel] + reg);
}
