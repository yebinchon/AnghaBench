
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adapter_comm; int adapter_ioremap; } ;
struct aac_dev {TYPE_1__ a_ops; } ;


 int _aac_rx_init (struct aac_dev*) ;
 int aac_rx_ioremap ;
 int aac_rx_select_comm ;

int aac_rx_init(struct aac_dev *dev)
{



 dev->a_ops.adapter_ioremap = aac_rx_ioremap;
 dev->a_ops.adapter_comm = aac_rx_select_comm;

 return _aac_rx_init(dev);
}
