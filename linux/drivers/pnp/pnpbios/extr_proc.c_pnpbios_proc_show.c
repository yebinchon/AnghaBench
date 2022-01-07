
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long u8 ;
struct seq_file {void* private; } ;
struct pnp_bios_node {int size; int data; } ;
struct TYPE_2__ {int max_node_size; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct pnp_bios_node*) ;
 struct pnp_bios_node* kzalloc (int ,int ) ;
 TYPE_1__ node_info ;
 scalar_t__ pnp_bios_get_dev_node (long*,int,struct pnp_bios_node*) ;
 int seq_write (struct seq_file*,int ,int) ;

__attribute__((used)) static int pnpbios_proc_show(struct seq_file *m, void *v)
{
 void *data = m->private;
 struct pnp_bios_node *node;
 int boot = (long)data >> 8;
 u8 nodenum = (long)data;
 int len;

 node = kzalloc(node_info.max_node_size, GFP_KERNEL);
 if (!node)
  return -ENOMEM;
 if (pnp_bios_get_dev_node(&nodenum, boot, node)) {
  kfree(node);
  return -EIO;
 }
 len = node->size - sizeof(struct pnp_bios_node);
 seq_write(m, node->data, len);
 kfree(node);
 return 0;
}
