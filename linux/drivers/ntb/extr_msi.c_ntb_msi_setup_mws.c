
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u64 ;
struct ntb_dev {TYPE_3__* msi; TYPE_1__* pdev; } ;
struct TYPE_5__ {int address_lo; scalar_t__ address_hi; } ;
struct msi_desc {TYPE_2__ msg; } ;
typedef int resource_size_t ;
struct TYPE_6__ {int base_addr; int end_addr; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int SZ_32K ;
 struct msi_desc* first_msi_entry (int *) ;
 int max (int,int) ;
 int ntb_mw_clear_trans (struct ntb_dev*,int,int) ;
 int ntb_mw_get_align (struct ntb_dev*,int,int,int*,int*,int*) ;
 int ntb_mw_set_trans (struct ntb_dev*,int,int,int,int) ;
 int ntb_peer_highest_mw_idx (struct ntb_dev*,int) ;
 int ntb_peer_port_count (struct ntb_dev*) ;
 int round_up (int,int) ;

int ntb_msi_setup_mws(struct ntb_dev *ntb)
{
 struct msi_desc *desc;
 u64 addr;
 int peer, peer_widx;
 resource_size_t addr_align, size_align, size_max;
 resource_size_t mw_size = SZ_32K;
 resource_size_t mw_min_size = mw_size;
 int i;
 int ret;

 if (!ntb->msi)
  return -EINVAL;

 desc = first_msi_entry(&ntb->pdev->dev);
 addr = desc->msg.address_lo + ((uint64_t)desc->msg.address_hi << 32);

 for (peer = 0; peer < ntb_peer_port_count(ntb); peer++) {
  peer_widx = ntb_peer_highest_mw_idx(ntb, peer);
  if (peer_widx < 0)
   return peer_widx;

  ret = ntb_mw_get_align(ntb, peer, peer_widx, &addr_align,
           ((void*)0), ((void*)0));
  if (ret)
   return ret;

  addr &= ~(addr_align - 1);
 }

 for (peer = 0; peer < ntb_peer_port_count(ntb); peer++) {
  peer_widx = ntb_peer_highest_mw_idx(ntb, peer);
  if (peer_widx < 0) {
   ret = peer_widx;
   goto error_out;
  }

  ret = ntb_mw_get_align(ntb, peer, peer_widx, ((void*)0),
           &size_align, &size_max);
  if (ret)
   goto error_out;

  mw_size = round_up(mw_size, size_align);
  mw_size = max(mw_size, size_max);
  if (mw_size < mw_min_size)
   mw_min_size = mw_size;

  ret = ntb_mw_set_trans(ntb, peer, peer_widx,
           addr, mw_size);
  if (ret)
   goto error_out;
 }

 ntb->msi->base_addr = addr;
 ntb->msi->end_addr = addr + mw_min_size;

 return 0;

error_out:
 for (i = 0; i < peer; i++) {
  peer_widx = ntb_peer_highest_mw_idx(ntb, peer);
  if (peer_widx < 0)
   continue;

  ntb_mw_clear_trans(ntb, i, peer_widx);
 }

 return ret;
}
