
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rio_mport {int dummy; } ;


 int TSI578_GLBL_ROUTE_BASE ;
 int rio_mport_read_config_32 (struct rio_mport*,int ,scalar_t__,int ,int*) ;

__attribute__((used)) static int
tsi57x_get_domain(struct rio_mport *mport, u16 destid, u8 hopcount,
         u8 *sw_domain)
{
 u32 regval;




 rio_mport_read_config_32(mport, destid, hopcount,
    TSI578_GLBL_ROUTE_BASE, &regval);

 *sw_domain = (u8)(regval >> 24);

 return 0;
}
