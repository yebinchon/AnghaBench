
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ namelen; int name; } ;
struct TYPE_5__ {TYPE_1__ symdata; } ;
struct TYPE_6__ {TYPE_2__ u; int cmd; } ;
struct xensyms {scalar_t__ namelen; TYPE_3__ op; int name; } ;
struct seq_file {scalar_t__ private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int XENPF_get_symbol ;
 scalar_t__ XEN_KSYM_NAME_LEN ;
 int kzalloc (scalar_t__,int ) ;
 int seq_open_private (struct file*,int *,int) ;
 int seq_release_private (struct inode*,struct file*) ;
 int set_xen_guest_handle (int ,int ) ;
 int xensyms_seq_ops ;

__attribute__((used)) static int xensyms_open(struct inode *inode, struct file *file)
{
 struct seq_file *m;
 struct xensyms *xs;
 int ret;

 ret = seq_open_private(file, &xensyms_seq_ops,
          sizeof(struct xensyms));
 if (ret)
  return ret;

 m = file->private_data;
 xs = (struct xensyms *)m->private;

 xs->namelen = XEN_KSYM_NAME_LEN + 1;
 xs->name = kzalloc(xs->namelen, GFP_KERNEL);
 if (!xs->name) {
  seq_release_private(inode, file);
  return -ENOMEM;
 }
 set_xen_guest_handle(xs->op.u.symdata.name, xs->name);
 xs->op.cmd = XENPF_get_symbol;
 xs->op.u.symdata.namelen = xs->namelen;

 return 0;
}
