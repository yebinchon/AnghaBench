
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct rio_mport {int dummy; } ;


 int EINVAL ;
 int RIO_BC_L2_Gn_ENTRYx_CSR (int ,int) ;
 scalar_t__ RIO_GET_TOTAL_PORTS (int) ;
 scalar_t__ RIO_GLOBAL_TABLE ;
 int RIO_RT_ENTRY_DROP_PKT ;
 int RIO_SPx_L2_Gn_ENTRYy_CSR (scalar_t__,int ,int) ;
 int RIO_SWP_INFO_CAR ;
 int rio_mport_read_config_32 (struct rio_mport*,scalar_t__,int ,int ,int*) ;
 int rio_mport_write_config_32 (struct rio_mport*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int
idtg3_route_clr_table(struct rio_mport *mport, u16 destid, u8 hopcount,
         u16 table)
{
 u32 i;
 u32 rval;
 int err;

 if (table == RIO_GLOBAL_TABLE) {
  for (i = 0; i <= 0xff; i++) {
   err = rio_mport_write_config_32(mport, destid, hopcount,
      RIO_BC_L2_Gn_ENTRYx_CSR(0, i),
      RIO_RT_ENTRY_DROP_PKT);
   if (err)
    break;
  }

  return err;
 }

 err = rio_mport_read_config_32(mport, destid, hopcount,
           RIO_SWP_INFO_CAR, &rval);
 if (err)
  return err;

 if (table >= RIO_GET_TOTAL_PORTS(rval))
  return -EINVAL;

 for (i = 0; i <= 0xff; i++) {
  err = rio_mport_write_config_32(mport, destid, hopcount,
     RIO_SPx_L2_Gn_ENTRYy_CSR(table, 0, i),
     RIO_RT_ENTRY_DROP_PKT);
  if (err)
   break;
 }

 return err;
}
