
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_dev {int topo; } ;


 int EINVAL ;
 int NTB_PORT_PRI_USD ;
 int NTB_PORT_SEC_DSD ;





int ntb_default_port_number(struct ntb_dev *ntb)
{
 switch (ntb->topo) {
 case 129:
 case 130:
  return NTB_PORT_PRI_USD;
 case 128:
 case 131:
  return NTB_PORT_SEC_DSD;
 default:
  break;
 }

 return -EINVAL;
}
