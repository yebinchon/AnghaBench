
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sdw_slave_prop {TYPE_1__* dp0_prop; } ;
struct sdw_slave {TYPE_2__* bus; struct sdw_slave_prop prop; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int imp_def_interrupts; } ;


 int SDW_DP0_INTMASK ;
 int SDW_DP0_INT_BRA_FAILURE ;
 int SDW_DP0_INT_PORT_READY ;
 int SDW_SCP_INT1_BUS_CLASH ;
 int SDW_SCP_INT1_IMPL_DEF ;
 int SDW_SCP_INT1_PARITY ;
 int SDW_SCP_INTMASK1 ;
 int dev_err (int ,char*,int) ;
 int sdw_update (struct sdw_slave*,int ,int,int) ;

__attribute__((used)) static int sdw_initialize_slave(struct sdw_slave *slave)
{
 struct sdw_slave_prop *prop = &slave->prop;
 int ret;
 u8 val;







 val = SDW_SCP_INT1_IMPL_DEF | SDW_SCP_INT1_BUS_CLASH |
     SDW_SCP_INT1_PARITY;


 ret = sdw_update(slave, SDW_SCP_INTMASK1, val, val);
 if (ret < 0) {
  dev_err(slave->bus->dev,
   "SDW_SCP_INTMASK1 write failed:%d\n", ret);
  return ret;
 }


 if (!slave->prop.dp0_prop)
  return 0;


 val = prop->dp0_prop->imp_def_interrupts;
 val |= SDW_DP0_INT_PORT_READY | SDW_DP0_INT_BRA_FAILURE;

 ret = sdw_update(slave, SDW_DP0_INTMASK, val, val);
 if (ret < 0) {
  dev_err(slave->bus->dev,
   "SDW_DP0_INTMASK read failed:%d\n", ret);
  return val;
 }

 return 0;
}
