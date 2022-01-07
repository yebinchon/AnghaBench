
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_dev {int dummy; } ;
struct idt_ntb_peer {int mw_cnt; TYPE_1__* mws; } ;
struct idt_ntb_dev {int peer_cnt; struct idt_ntb_peer* peers; } ;
typedef int resource_size_t ;
struct TYPE_2__ {int size_max; int size_align; int addr_align; } ;


 int EINVAL ;
 struct idt_ntb_dev* to_ndev_ntb (struct ntb_dev*) ;

__attribute__((used)) static int idt_ntb_mw_get_align(struct ntb_dev *ntb, int pidx, int widx,
    resource_size_t *addr_align,
    resource_size_t *size_align,
    resource_size_t *size_max)
{
 struct idt_ntb_dev *ndev = to_ndev_ntb(ntb);
 struct idt_ntb_peer *peer;

 if (pidx < 0 || ndev->peer_cnt <= pidx)
  return -EINVAL;

 peer = &ndev->peers[pidx];

 if (widx < 0 || peer->mw_cnt <= widx)
  return -EINVAL;

 if (addr_align != ((void*)0))
  *addr_align = peer->mws[widx].addr_align;

 if (size_align != ((void*)0))
  *size_align = peer->mws[widx].size_align;

 if (size_max != ((void*)0))
  *size_max = peer->mws[widx].size_max;

 return 0;
}
