
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct rio_mport {int dummy; } ;


 int EINVAL ;
 int RIO_GET_PORT_NUM (scalar_t__) ;
 int RIO_GET_TOTAL_PORTS (scalar_t__) ;
 int RIO_GLOBAL_TABLE ;
 scalar_t__ RIO_INVALID_ROUTE ;
 scalar_t__ RIO_RT_ENTRY_DROP_PKT ;
 int RIO_SPx_L2_Gn_ENTRYy_CSR (int,int ,int) ;
 int RIO_SWP_INFO_CAR ;
 int rio_mport_read_config_32 (struct rio_mport*,int,scalar_t__,int ,scalar_t__*) ;

__attribute__((used)) static int
idtg3_route_get_entry(struct rio_mport *mport, u16 destid, u8 hopcount,
         u16 table, u16 route_destid, u8 *route_port)
{
 u32 rval;
 int err;

 if (route_destid > 0xFF)
  return -EINVAL;

 err = rio_mport_read_config_32(mport, destid, hopcount,
           RIO_SWP_INFO_CAR, &rval);
 if (err)
  return err;






 if (table == RIO_GLOBAL_TABLE)
  table = RIO_GET_PORT_NUM(rval);
 else if (table >= RIO_GET_TOTAL_PORTS(rval))
  return -EINVAL;

 err = rio_mport_read_config_32(mport, destid, hopcount,
   RIO_SPx_L2_Gn_ENTRYy_CSR(table, 0, route_destid),
   &rval);
 if (err)
  return err;

 if (rval == RIO_RT_ENTRY_DROP_PKT)
  *route_port = RIO_INVALID_ROUTE;
 else
  *route_port = (u8)rval;

 return 0;
}
