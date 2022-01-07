
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_time_gran; struct ceph_fs_client* s_fs_info; int s_time_max; scalar_t__ s_time_min; int * s_export_op; int * s_d_op; int * s_op; int s_xattr; int s_maxbytes; int s_flags; } ;
struct ceph_fs_client {unsigned long long max_file_size; struct super_block* sb; TYPE_1__* mount_options; } ;
struct TYPE_2__ {int sb_flags; } ;


 int MAX_LFS_FILESIZE ;
 int U32_MAX ;
 int ceph_dentry_ops ;
 int ceph_export_ops ;
 int ceph_super_ops ;
 int ceph_xattr_handlers ;
 int dout (char*,struct super_block*,void*) ;
 int set_anon_super (struct super_block*,int *) ;

__attribute__((used)) static int ceph_set_super(struct super_block *s, void *data)
{
 struct ceph_fs_client *fsc = data;
 int ret;

 dout("set_super %p data %p\n", s, data);

 s->s_flags = fsc->mount_options->sb_flags;
 s->s_maxbytes = MAX_LFS_FILESIZE;

 s->s_xattr = ceph_xattr_handlers;
 s->s_fs_info = fsc;
 fsc->sb = s;
 fsc->max_file_size = 1ULL << 40;

 s->s_op = &ceph_super_ops;
 s->s_d_op = &ceph_dentry_ops;
 s->s_export_op = &ceph_export_ops;

 s->s_time_gran = 1;
 s->s_time_min = 0;
 s->s_time_max = U32_MAX;

 ret = set_anon_super(s, ((void*)0));
 if (ret != 0)
  goto fail;

 return ret;

fail:
 s->s_fs_info = ((void*)0);
 fsc->sb = ((void*)0);
 return ret;
}
