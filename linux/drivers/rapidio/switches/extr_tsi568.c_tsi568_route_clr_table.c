
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct rio_mport {scalar_t__ sys_size; } ;


 scalar_t__ RIO_GLOBAL_TABLE ;
 int RIO_INVALID_ROUTE ;
 int SPBC_ROUTE_CFG_DESTID ;
 int SPBC_ROUTE_CFG_PORT ;
 int SPP_ROUTE_CFG_DESTID (scalar_t__) ;
 int SPP_ROUTE_CFG_PORT (scalar_t__) ;
 int rio_mport_write_config_32 (struct rio_mport*,scalar_t__,int ,int ,int) ;

__attribute__((used)) static int
tsi568_route_clr_table(struct rio_mport *mport, u16 destid, u8 hopcount,
         u16 table)
{
 u32 route_idx;
 u32 lut_size;

 lut_size = (mport->sys_size) ? 0x1ff : 0xff;

 if (table == RIO_GLOBAL_TABLE) {
  rio_mport_write_config_32(mport, destid, hopcount,
     SPBC_ROUTE_CFG_DESTID, 0x80000000);
  for (route_idx = 0; route_idx <= lut_size; route_idx++)
   rio_mport_write_config_32(mport, destid, hopcount,
      SPBC_ROUTE_CFG_PORT,
      RIO_INVALID_ROUTE);
 } else {
  rio_mport_write_config_32(mport, destid, hopcount,
     SPP_ROUTE_CFG_DESTID(table),
     0x80000000);
  for (route_idx = 0; route_idx <= lut_size; route_idx++)
   rio_mport_write_config_32(mport, destid, hopcount,
      SPP_ROUTE_CFG_PORT(table),
      RIO_INVALID_ROUTE);
 }

 return 0;
}
