
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pnp_dev {int active; int dev; int number; } ;
struct pnp_bios_node {int dummy; } ;
struct TYPE_2__ {int max_node_size; } ;


 int ENODEV ;
 int EPERM ;
 int GFP_KERNEL ;
 scalar_t__ PNPMODE_DYNAMIC ;
 int kfree (struct pnp_bios_node*) ;
 struct pnp_bios_node* kzalloc (int ,int ) ;
 TYPE_1__ node_info ;
 scalar_t__ pnp_bios_get_dev_node (int *,char,struct pnp_bios_node*) ;
 int pnp_dbg (int *,char*) ;
 int pnp_is_active (struct pnp_dev*) ;
 int pnpbios_is_dynamic (struct pnp_dev*) ;
 int pnpbios_read_resources_from_node (struct pnp_dev*,struct pnp_bios_node*) ;

__attribute__((used)) static int pnpbios_get_resources(struct pnp_dev *dev)
{
 u8 nodenum = dev->number;
 struct pnp_bios_node *node;

 if (!pnpbios_is_dynamic(dev))
  return -EPERM;

 pnp_dbg(&dev->dev, "get resources\n");
 node = kzalloc(node_info.max_node_size, GFP_KERNEL);
 if (!node)
  return -1;
 if (pnp_bios_get_dev_node(&nodenum, (char)PNPMODE_DYNAMIC, node)) {
  kfree(node);
  return -ENODEV;
 }
 pnpbios_read_resources_from_node(dev, node);
 dev->active = pnp_is_active(dev);
 kfree(node);
 return 0;
}
