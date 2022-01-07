
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_dev {int dummy; } ;


 int EINVAL ;
 int NTB_DEF_PEER_IDX ;
 int ntb_default_peer_port_number (struct ntb_dev*,int ) ;

int ntb_default_peer_port_idx(struct ntb_dev *ntb, int port)
{
 int peer_port = ntb_default_peer_port_number(ntb, NTB_DEF_PEER_IDX);

 if (peer_port == -EINVAL || port != peer_port)
  return -EINVAL;

 return 0;
}
