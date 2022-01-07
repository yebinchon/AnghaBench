
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct atp_unit {size_t* ioport; } ;


 int inw (size_t) ;

__attribute__((used)) static inline u16 atp_readw_io(struct atp_unit *atp, u8 channel, u8 reg)
{
 return inw(atp->ioport[channel] + reg);
}
