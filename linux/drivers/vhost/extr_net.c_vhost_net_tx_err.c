
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net {int tx_zcopy_err; } ;



__attribute__((used)) static void vhost_net_tx_err(struct vhost_net *net)
{
 ++net->tx_zcopy_err;
}
