
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* TupleData; scalar_t__ TupleDataLen; } ;
typedef TYPE_1__ tuple_t ;
struct pcmcia_device {int dev; } ;
struct net_device {scalar_t__* dev_addr; } ;


 scalar_t__ CISTPL_FUNCE_LAN_NODE_ID ;
 int EINVAL ;
 scalar_t__ ETH_ALEN ;
 int dev_warn (int *,char*) ;

__attribute__((used)) static int pcmcia_do_get_mac(struct pcmcia_device *p_dev, tuple_t *tuple,
        void *priv)
{
 struct net_device *dev = priv;
 int i;

 if (tuple->TupleData[0] != CISTPL_FUNCE_LAN_NODE_ID)
  return -EINVAL;
 if (tuple->TupleDataLen < ETH_ALEN + 2) {
  dev_warn(&p_dev->dev, "Invalid CIS tuple length for "
   "LAN_NODE_ID\n");
  return -EINVAL;
 }

 if (tuple->TupleData[1] != ETH_ALEN) {
  dev_warn(&p_dev->dev, "Invalid header for LAN_NODE_ID\n");
  return -EINVAL;
 }
 for (i = 0; i < 6; i++)
  dev->dev_addr[i] = tuple->TupleData[i+2];
 return 0;
}
