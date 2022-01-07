
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct rio_mport {scalar_t__ host_deviceid; } ;


 int EINVAL ;
 int RIO_HOST_DID_LOCK_CSR ;
 int mdelay (int) ;
 int pr_debug (char*,int ,int ) ;
 int rio_mport_read_config_32 (struct rio_mport*,int ,int ,int ,scalar_t__*) ;
 int rio_mport_write_config_32 (struct rio_mport*,int ,int ,int ,scalar_t__) ;

int rio_lock_device(struct rio_mport *port, u16 destid,
      u8 hopcount, int wait_ms)
{
 u32 result;
 int tcnt = 0;


 rio_mport_write_config_32(port, destid, hopcount,
      RIO_HOST_DID_LOCK_CSR, port->host_deviceid);
 rio_mport_read_config_32(port, destid, hopcount,
     RIO_HOST_DID_LOCK_CSR, &result);

 while (result != port->host_deviceid) {
  if (wait_ms != 0 && tcnt == wait_ms) {
   pr_debug("RIO: timeout when locking device %x:%x\n",
    destid, hopcount);
   return -EINVAL;
  }


  mdelay(1);
  tcnt++;

  rio_mport_write_config_32(port, destid,
   hopcount,
   RIO_HOST_DID_LOCK_CSR,
   port->host_deviceid);
  rio_mport_read_config_32(port, destid,
   hopcount,
   RIO_HOST_DID_LOCK_CSR, &result);
 }

 return 0;
}
