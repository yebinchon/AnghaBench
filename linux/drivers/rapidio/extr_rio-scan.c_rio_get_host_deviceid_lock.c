
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rio_mport {int sys_size; } ;


 int RIO_ANY_DESTID (int ) ;
 int RIO_HOST_DID_LOCK_CSR ;
 int rio_mport_read_config_32 (struct rio_mport*,int ,int ,int ,int*) ;

__attribute__((used)) static u16 rio_get_host_deviceid_lock(struct rio_mport *port, u8 hopcount)
{
 u32 result;

 rio_mport_read_config_32(port, RIO_ANY_DESTID(port->sys_size), hopcount,
     RIO_HOST_DID_LOCK_CSR, &result);

 return (u16) (result & 0xffff);
}
