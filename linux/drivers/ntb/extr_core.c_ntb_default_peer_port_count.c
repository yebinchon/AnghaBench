
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_dev {int dummy; } ;


 int NTB_DEF_PEER_CNT ;

int ntb_default_peer_port_count(struct ntb_dev *ntb)
{
 return NTB_DEF_PEER_CNT;
}
