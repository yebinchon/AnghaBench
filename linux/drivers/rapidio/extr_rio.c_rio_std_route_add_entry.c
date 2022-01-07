
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct rio_mport {int dummy; } ;


 scalar_t__ RIO_GLOBAL_TABLE ;
 int RIO_STD_RTE_CONF_DESTID_SEL_CSR ;
 int RIO_STD_RTE_CONF_PORT_SEL_CSR ;
 int rio_mport_write_config_32 (struct rio_mport*,scalar_t__,scalar_t__,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
rio_std_route_add_entry(struct rio_mport *mport, u16 destid, u8 hopcount,
   u16 table, u16 route_destid, u8 route_port)
{
 if (table == RIO_GLOBAL_TABLE) {
  rio_mport_write_config_32(mport, destid, hopcount,
    RIO_STD_RTE_CONF_DESTID_SEL_CSR,
    (u32)route_destid);
  rio_mport_write_config_32(mport, destid, hopcount,
    RIO_STD_RTE_CONF_PORT_SEL_CSR,
    (u32)route_port);
 }

 udelay(10);
 return 0;
}
