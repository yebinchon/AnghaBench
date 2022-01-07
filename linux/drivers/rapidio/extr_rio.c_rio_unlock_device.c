
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rio_mport {int host_deviceid; } ;


 int EINVAL ;
 int RIO_HOST_DID_LOCK_CSR ;
 int pr_debug (char*,int ,int ) ;
 int rio_mport_read_config_32 (struct rio_mport*,int ,int ,int ,int*) ;
 int rio_mport_write_config_32 (struct rio_mport*,int ,int ,int ,int ) ;

int rio_unlock_device(struct rio_mport *port, u16 destid, u8 hopcount)
{
 u32 result;


 rio_mport_write_config_32(port, destid,
      hopcount,
      RIO_HOST_DID_LOCK_CSR,
      port->host_deviceid);
 rio_mport_read_config_32(port, destid, hopcount,
  RIO_HOST_DID_LOCK_CSR, &result);
 if ((result & 0xffff) != 0xffff) {
  pr_debug("RIO: badness when releasing device lock %x:%x\n",
    destid, hopcount);
  return -EINVAL;
 }

 return 0;
}
