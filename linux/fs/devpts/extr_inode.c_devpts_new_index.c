
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max; scalar_t__ reserve; } ;
struct pts_fs_info {TYPE_1__ mount_opts; int allocated_ptys; } ;


 int ENOSPC ;
 int GFP_KERNEL ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 int ida_alloc_max (int *,scalar_t__,int ) ;
 int pty_count ;
 scalar_t__ pty_limit ;
 scalar_t__ pty_reserve ;

int devpts_new_index(struct pts_fs_info *fsi)
{
 int index = -ENOSPC;

 if (atomic_inc_return(&pty_count) >= (pty_limit -
     (fsi->mount_opts.reserve ? 0 : pty_reserve)))
  goto out;

 index = ida_alloc_max(&fsi->allocated_ptys, fsi->mount_opts.max - 1,
   GFP_KERNEL);

out:
 if (index < 0)
  atomic_dec(&pty_count);
 return index;
}
