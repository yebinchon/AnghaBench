
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rio_mport {int dummy; } ;


 int TSI578_GLBL_ROUTE_BASE ;
 int TSI578_SP_MODE_GLBL ;
 int TSI578_SP_MODE_LUT_512 ;
 int rio_mport_read_config_32 (struct rio_mport*,int ,int,int ,int*) ;
 int rio_mport_write_config_32 (struct rio_mport*,int ,int,int ,int) ;

__attribute__((used)) static int
tsi57x_set_domain(struct rio_mport *mport, u16 destid, u8 hopcount,
         u8 sw_domain)
{
 u32 regval;






 rio_mport_read_config_32(mport, destid, hopcount,
     TSI578_SP_MODE_GLBL, &regval);
 rio_mport_write_config_32(mport, destid, hopcount, TSI578_SP_MODE_GLBL,
      regval & ~TSI578_SP_MODE_LUT_512);

 rio_mport_write_config_32(mport, destid, hopcount,
      TSI578_GLBL_ROUTE_BASE,
      (u32)(sw_domain << 24));
 return 0;
}
