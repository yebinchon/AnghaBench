
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int VHOST_VSOCK_DEFAULT_HOST_CID ;

__attribute__((used)) static u32 vhost_transport_get_local_cid(void)
{
 return VHOST_VSOCK_DEFAULT_HOST_CID;
}
