
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pnp_dev {int flags; int number; } ;
struct pnp_bios_node {int dummy; } ;
struct TYPE_2__ {int max_node_size; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int PNPBIOS_NO_DISABLE ;
 scalar_t__ PNPMODE_DYNAMIC ;
 int kfree (struct pnp_bios_node*) ;
 struct pnp_bios_node* kzalloc (int ,int ) ;
 TYPE_1__ node_info ;
 scalar_t__ pnp_bios_get_dev_node (int *,char,struct pnp_bios_node*) ;
 int pnp_bios_set_dev_node (int ,char,struct pnp_bios_node*) ;
 int pnpbios_is_dynamic (struct pnp_dev*) ;
 int pnpbios_zero_data_stream (struct pnp_bios_node*) ;

__attribute__((used)) static int pnpbios_disable_resources(struct pnp_dev *dev)
{
 struct pnp_bios_node *node;
 u8 nodenum = dev->number;
 int ret;

 if (dev->flags & PNPBIOS_NO_DISABLE || !pnpbios_is_dynamic(dev))
  return -EPERM;

 node = kzalloc(node_info.max_node_size, GFP_KERNEL);
 if (!node)
  return -ENOMEM;

 if (pnp_bios_get_dev_node(&nodenum, (char)PNPMODE_DYNAMIC, node)) {
  kfree(node);
  return -ENODEV;
 }
 pnpbios_zero_data_stream(node);

 ret = pnp_bios_set_dev_node(dev->number, (char)PNPMODE_DYNAMIC, node);
 kfree(node);
 if (ret > 0)
  ret = -1;
 return ret;
}
