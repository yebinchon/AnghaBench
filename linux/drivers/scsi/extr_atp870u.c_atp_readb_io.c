
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct atp_unit {size_t* ioport; } ;


 size_t inb (size_t) ;

__attribute__((used)) static inline u8 atp_readb_io(struct atp_unit *atp, u8 channel, u8 reg)
{
 return inb(atp->ioport[channel] + reg);
}
