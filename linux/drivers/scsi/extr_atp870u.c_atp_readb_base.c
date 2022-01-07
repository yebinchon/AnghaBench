
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct atp_unit {scalar_t__ baseport; } ;


 scalar_t__ inb (scalar_t__) ;

__attribute__((used)) static inline u8 atp_readb_base(struct atp_unit *atp, u8 reg)
{
 return inb(atp->baseport + reg);
}
