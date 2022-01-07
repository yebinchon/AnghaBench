
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct atp_unit {scalar_t__ baseport; } ;


 int outw (int ,scalar_t__) ;

__attribute__((used)) static inline void atp_writew_base(struct atp_unit *atp, u8 reg, u16 val)
{
 outw(val, atp->baseport + reg);
}
