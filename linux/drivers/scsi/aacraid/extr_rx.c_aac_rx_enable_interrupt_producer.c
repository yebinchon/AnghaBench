
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_dev {int OIMR; } ;
struct TYPE_2__ {int OIMR; } ;


 TYPE_1__ MUnit ;
 int rx_writeb (struct aac_dev*,int ,int) ;

__attribute__((used)) static void aac_rx_enable_interrupt_producer(struct aac_dev *dev)
{
 rx_writeb(dev, MUnit.OIMR, dev->OIMR = 0xfb);
}
