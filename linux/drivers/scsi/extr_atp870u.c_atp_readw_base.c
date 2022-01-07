
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct atp_unit {scalar_t__ baseport; } ;


 int inw (scalar_t__) ;

__attribute__((used)) static inline u16 atp_readw_base(struct atp_unit *atp, u8 reg)
{
 return inw(atp->baseport + reg);
}
