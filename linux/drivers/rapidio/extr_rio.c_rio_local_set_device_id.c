
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rio_mport {int sys_size; } ;


 int RIO_DID_CSR ;
 int RIO_SET_DID (int ,int ) ;
 int rio_local_write_config_32 (struct rio_mport*,int ,int ) ;

void rio_local_set_device_id(struct rio_mport *port, u16 did)
{
 rio_local_write_config_32(port, RIO_DID_CSR,
      RIO_SET_DID(port->sys_size, did));
}
