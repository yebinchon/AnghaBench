
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct rio_mport {int dummy; } ;


 int CPS_DEFAULT_ROUTE ;
 scalar_t__ RIO_GLOBAL_TABLE ;
 int RIO_STD_RTE_CONF_DESTID_SEL_CSR ;
 int RIO_STD_RTE_CONF_PORT_SEL_CSR ;
 int rio_mport_write_config_32 (struct rio_mport*,scalar_t__,int ,int ,int) ;

__attribute__((used)) static int
idtcps_route_clr_table(struct rio_mport *mport, u16 destid, u8 hopcount,
         u16 table)
{
 u32 i;

 if (table == RIO_GLOBAL_TABLE) {
  for (i = 0x80000000; i <= 0x800000ff;) {
   rio_mport_write_config_32(mport, destid, hopcount,
    RIO_STD_RTE_CONF_DESTID_SEL_CSR, i);
   rio_mport_write_config_32(mport, destid, hopcount,
    RIO_STD_RTE_CONF_PORT_SEL_CSR,
    (CPS_DEFAULT_ROUTE << 24) |
    (CPS_DEFAULT_ROUTE << 16) |
    (CPS_DEFAULT_ROUTE << 8) | CPS_DEFAULT_ROUTE);
   i += 4;
  }
 }

 return 0;
}
