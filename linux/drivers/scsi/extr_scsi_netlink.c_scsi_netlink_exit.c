
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int netlink_kernel_release (scalar_t__) ;
 scalar_t__ scsi_nl_sock ;

void
scsi_netlink_exit(void)
{
 if (scsi_nl_sock) {
  netlink_kernel_release(scsi_nl_sock);
 }

 return;
}
