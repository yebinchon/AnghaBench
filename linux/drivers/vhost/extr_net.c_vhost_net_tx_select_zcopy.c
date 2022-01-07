
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net {int tx_packets; int tx_zcopy_err; int tx_flush; } ;



__attribute__((used)) static bool vhost_net_tx_select_zcopy(struct vhost_net *net)
{



 return !net->tx_flush &&
  net->tx_packets / 64 >= net->tx_zcopy_err;
}
