
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct rio_mport {int dummy; } ;


 scalar_t__ RIO_GLOBAL_TABLE ;
 int RIO_STD_RTE_CONF_DESTID_SEL_CSR ;
 int RIO_STD_RTE_CONF_PORT_SEL_CSR ;
 int rio_mport_read_config_32 (struct rio_mport*,scalar_t__,scalar_t__,int ,scalar_t__*) ;
 int rio_mport_write_config_32 (struct rio_mport*,scalar_t__,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int
rio_std_route_get_entry(struct rio_mport *mport, u16 destid, u8 hopcount,
   u16 table, u16 route_destid, u8 *route_port)
{
 u32 result;

 if (table == RIO_GLOBAL_TABLE) {
  rio_mport_write_config_32(mport, destid, hopcount,
    RIO_STD_RTE_CONF_DESTID_SEL_CSR, route_destid);
  rio_mport_read_config_32(mport, destid, hopcount,
    RIO_STD_RTE_CONF_PORT_SEL_CSR, &result);

  *route_port = (u8)result;
 }

 return 0;
}
