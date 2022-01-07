
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sdw_slave {TYPE_1__* bus; int * port_ready; int dev; } ;
struct TYPE_2__ {int * dev; } ;


 int SDW_DPN_INT (int) ;
 int SDW_DPN_INT_IMPDEF1 ;
 int SDW_DPN_INT_IMPDEF2 ;
 int SDW_DPN_INT_IMPDEF3 ;
 int SDW_DPN_INT_PORT_READY ;
 int SDW_DPN_INT_TEST_FAIL ;
 int SDW_READ_INTR_CLEAR_RETRY ;
 int complete (int *) ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 int sdw_handle_dp0_interrupt (struct sdw_slave*,int*) ;
 int sdw_read (struct sdw_slave*,int ) ;
 int sdw_write (struct sdw_slave*,int ,int) ;

__attribute__((used)) static int sdw_handle_port_interrupt(struct sdw_slave *slave,
         int port, u8 *slave_status)
{
 u8 clear = 0, impl_int_mask;
 int status, status2, ret, count = 0;
 u32 addr;

 if (port == 0)
  return sdw_handle_dp0_interrupt(slave, slave_status);

 addr = SDW_DPN_INT(port);
 status = sdw_read(slave, addr);
 if (status < 0) {
  dev_err(slave->bus->dev,
   "SDW_DPN_INT read failed:%d\n", status);

  return status;
 }

 do {
  if (status & SDW_DPN_INT_TEST_FAIL) {
   dev_err(&slave->dev, "Test fail for port:%d\n", port);
   clear |= SDW_DPN_INT_TEST_FAIL;
  }





  if (status & SDW_DPN_INT_PORT_READY) {
   complete(&slave->port_ready[port]);
   clear |= SDW_DPN_INT_PORT_READY;
  }

  impl_int_mask = SDW_DPN_INT_IMPDEF1 |
   SDW_DPN_INT_IMPDEF2 | SDW_DPN_INT_IMPDEF3;

  if (status & impl_int_mask) {
   clear |= impl_int_mask;
   *slave_status = clear;
  }


  ret = sdw_write(slave, addr, clear);
  if (ret < 0) {
   dev_err(slave->bus->dev,
    "SDW_DPN_INT write failed:%d\n", ret);
   return ret;
  }


  status2 = sdw_read(slave, addr);
  if (status2 < 0) {
   dev_err(slave->bus->dev,
    "SDW_DPN_INT read failed:%d\n", status2);
   return status2;
  }
  status &= status2;

  count++;


 } while (status != 0 && count < SDW_READ_INTR_CLEAR_RETRY);

 if (count == SDW_READ_INTR_CLEAR_RETRY)
  dev_warn(slave->bus->dev, "Reached MAX_RETRY on port read");

 return ret;
}
