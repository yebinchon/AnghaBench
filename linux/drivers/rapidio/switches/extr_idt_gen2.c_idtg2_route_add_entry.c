
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct rio_mport {int dummy; } ;


 scalar_t__ IDT_DEFAULT_ROUTE ;
 int LOCAL_RTE_CONF_DESTID_SEL ;
 scalar_t__ RIO_GLOBAL_TABLE ;
 scalar_t__ RIO_INVALID_ROUTE ;
 int RIO_STD_RTE_CONF_DESTID_SEL_CSR ;
 int RIO_STD_RTE_CONF_PORT_SEL_CSR ;
 int rio_mport_write_config_32 (struct rio_mport*,scalar_t__,scalar_t__,int ,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int
idtg2_route_add_entry(struct rio_mport *mport, u16 destid, u8 hopcount,
         u16 table, u16 route_destid, u8 route_port)
{



 if (table == RIO_GLOBAL_TABLE)
  table = 0;
 else
  table++;

 if (route_port == RIO_INVALID_ROUTE)
  route_port = IDT_DEFAULT_ROUTE;

 rio_mport_write_config_32(mport, destid, hopcount,
      LOCAL_RTE_CONF_DESTID_SEL, table);




 rio_mport_write_config_32(mport, destid, hopcount,
      RIO_STD_RTE_CONF_DESTID_SEL_CSR,
      (u32)route_destid);

 rio_mport_write_config_32(mport, destid, hopcount,
      RIO_STD_RTE_CONF_PORT_SEL_CSR,
      (u32)route_port);
 udelay(10);

 return 0;
}
