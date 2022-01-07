
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ntb_dev {TYPE_1__* msi; int dev; } ;
typedef int resource_size_t ;
typedef int phys_addr_t ;
struct TYPE_3__ {void (* desc_changed ) (void*) ;scalar_t__* peer_mws; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ devm_ioremap (int *,int ,int ) ;
 int devm_iounmap (int *,scalar_t__) ;
 int devm_kfree (int *,TYPE_1__*) ;
 TYPE_1__* devm_kzalloc (int *,size_t,int ) ;
 int ntb_peer_mw_count (struct ntb_dev*) ;
 int ntb_peer_mw_get_addr (struct ntb_dev*,int,int *,int *) ;
 int ntb_peer_port_count (struct ntb_dev*) ;

int ntb_msi_init(struct ntb_dev *ntb,
   void (*desc_changed)(void *ctx))
{
 phys_addr_t mw_phys_addr;
 resource_size_t mw_size;
 size_t struct_size;
 int peer_widx;
 int peers;
 int ret;
 int i;

 peers = ntb_peer_port_count(ntb);
 if (peers <= 0)
  return -EINVAL;

 struct_size = sizeof(*ntb->msi) + sizeof(*ntb->msi->peer_mws) * peers;

 ntb->msi = devm_kzalloc(&ntb->dev, struct_size, GFP_KERNEL);
 if (!ntb->msi)
  return -ENOMEM;

 ntb->msi->desc_changed = desc_changed;

 for (i = 0; i < peers; i++) {
  peer_widx = ntb_peer_mw_count(ntb) - 1 - i;

  ret = ntb_peer_mw_get_addr(ntb, peer_widx, &mw_phys_addr,
        &mw_size);
  if (ret)
   goto unroll;

  ntb->msi->peer_mws[i] = devm_ioremap(&ntb->dev, mw_phys_addr,
           mw_size);
  if (!ntb->msi->peer_mws[i]) {
   ret = -EFAULT;
   goto unroll;
  }
 }

 return 0;

unroll:
 for (i = 0; i < peers; i++)
  if (ntb->msi->peer_mws[i])
   devm_iounmap(&ntb->dev, ntb->msi->peer_mws[i]);

 devm_kfree(&ntb->dev, ntb->msi);
 ntb->msi = ((void*)0);
 return ret;
}
