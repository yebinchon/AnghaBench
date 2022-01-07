
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_msi_desc {int addr_offset; int data; } ;
struct ntb_dev {TYPE_1__* msi; } ;
struct TYPE_2__ {int ** peer_mws; } ;


 int EINVAL ;
 int iowrite32 (int ,int *) ;

int ntb_msi_peer_trigger(struct ntb_dev *ntb, int peer,
    struct ntb_msi_desc *desc)
{
 int idx;

 if (!ntb->msi)
  return -EINVAL;

 idx = desc->addr_offset / sizeof(*ntb->msi->peer_mws[peer]);

 iowrite32(desc->data, &ntb->msi->peer_mws[peer][idx]);

 return 0;
}
