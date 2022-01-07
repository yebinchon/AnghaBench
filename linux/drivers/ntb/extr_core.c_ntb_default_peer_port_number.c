
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_dev {int topo; } ;


 int EINVAL ;
 int NTB_DEF_PEER_IDX ;
 int NTB_PORT_PRI_USD ;
 int NTB_PORT_SEC_DSD ;





int ntb_default_peer_port_number(struct ntb_dev *ntb, int pidx)
{
 if (pidx != NTB_DEF_PEER_IDX)
  return -EINVAL;

 switch (ntb->topo) {
 case 129:
 case 130:
  return NTB_PORT_SEC_DSD;
 case 128:
 case 131:
  return NTB_PORT_PRI_USD;
 default:
  break;
 }

 return -EINVAL;
}
