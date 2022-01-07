
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_rdir {int dummy; } ;
struct p9_fid {struct p9_rdir* rdir; } ;
struct file {struct p9_fid* private_data; } ;


 int GFP_KERNEL ;
 struct p9_rdir* kzalloc (int,int ) ;

__attribute__((used)) static struct p9_rdir *v9fs_alloc_rdir_buf(struct file *filp, int buflen)
{
 struct p9_fid *fid = filp->private_data;
 if (!fid->rdir)
  fid->rdir = kzalloc(sizeof(struct p9_rdir) + buflen, GFP_KERNEL);
 return fid->rdir;
}
