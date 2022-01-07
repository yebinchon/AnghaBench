
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; int s_blocksize_bits; int s_time_gran; struct autofs_sb_info* s_fs_info; struct dentry* s_root; int * s_d_op; int * s_op; int s_magic; } ;
struct inode {int * i_op; int * i_fop; } ;
struct file {int dummy; } ;
struct dentry {struct autofs_info* d_fsdata; } ;
struct autofs_sb_info {int pipefd; scalar_t__ version; scalar_t__ min_proto; scalar_t__ max_proto; int * oz_pgrp; int flags; struct file* pipe; int type; scalar_t__ sub_version; int expiring_list; int active_list; int lookup_lock; int * queues; int fs_lock; int pipe_mutex; int wq_mutex; struct super_block* sb; scalar_t__ exp_timeout; int magic; } ;
struct autofs_info {int dummy; } ;


 scalar_t__ AUTOFS_MAX_PROTO_VERSION ;
 scalar_t__ AUTOFS_MIN_PROTO_VERSION ;
 scalar_t__ AUTOFS_PROTO_SUBVERSION ;
 int AUTOFS_SBI_CATATONIC ;
 int AUTOFS_SBI_MAGIC ;
 int AUTOFS_SUPER_MAGIC ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PIDTYPE_PGID ;
 int S_IFDIR ;
 int __managed_dentry_set_managed (struct dentry*) ;
 int autofs_dentry_operations ;
 int autofs_dir_inode_operations ;
 int autofs_free_ino (struct autofs_info*) ;
 struct inode* autofs_get_inode (struct super_block*,int) ;
 struct autofs_info* autofs_new_ino (struct autofs_sb_info*) ;
 int autofs_prepare_pipe (struct file*) ;
 int autofs_root_operations ;
 int autofs_sops ;
 scalar_t__ autofs_type_trigger (int ) ;
 int current ;
 struct dentry* d_make_root (struct inode*) ;
 int dput (struct dentry*) ;
 struct file* fget (int) ;
 int * find_get_pid (int) ;
 int fput (struct file*) ;
 int * get_task_pid (int ,int ) ;
 int kfree (struct autofs_sb_info*) ;
 struct autofs_sb_info* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 scalar_t__ parse_options (void*,struct inode*,int*,int*,struct autofs_sb_info*) ;
 int pid_nr (int *) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,...) ;
 int put_pid (int *) ;
 int set_autofs_type_indirect (int *) ;
 int spin_lock_init (int *) ;

int autofs_fill_super(struct super_block *s, void *data, int silent)
{
 struct inode *root_inode;
 struct dentry *root;
 struct file *pipe;
 struct autofs_sb_info *sbi;
 struct autofs_info *ino;
 int pgrp = 0;
 bool pgrp_set = 0;
 int ret = -EINVAL;

 sbi = kzalloc(sizeof(*sbi), GFP_KERNEL);
 if (!sbi)
  return -ENOMEM;
 pr_debug("starting up, sbi = %p\n", sbi);

 s->s_fs_info = sbi;
 sbi->magic = AUTOFS_SBI_MAGIC;
 sbi->pipefd = -1;
 sbi->pipe = ((void*)0);
 sbi->exp_timeout = 0;
 sbi->oz_pgrp = ((void*)0);
 sbi->sb = s;
 sbi->version = 0;
 sbi->sub_version = 0;
 sbi->flags = AUTOFS_SBI_CATATONIC;
 set_autofs_type_indirect(&sbi->type);
 sbi->min_proto = 0;
 sbi->max_proto = 0;
 mutex_init(&sbi->wq_mutex);
 mutex_init(&sbi->pipe_mutex);
 spin_lock_init(&sbi->fs_lock);
 sbi->queues = ((void*)0);
 spin_lock_init(&sbi->lookup_lock);
 INIT_LIST_HEAD(&sbi->active_list);
 INIT_LIST_HEAD(&sbi->expiring_list);
 s->s_blocksize = 1024;
 s->s_blocksize_bits = 10;
 s->s_magic = AUTOFS_SUPER_MAGIC;
 s->s_op = &autofs_sops;
 s->s_d_op = &autofs_dentry_operations;
 s->s_time_gran = 1;




 ino = autofs_new_ino(sbi);
 if (!ino) {
  ret = -ENOMEM;
  goto fail_free;
 }
 root_inode = autofs_get_inode(s, S_IFDIR | 0755);
 root = d_make_root(root_inode);
 if (!root) {
  ret = -ENOMEM;
  goto fail_ino;
 }
 pipe = ((void*)0);

 root->d_fsdata = ino;


 if (parse_options(data, root_inode, &pgrp, &pgrp_set, sbi)) {
  pr_err("called with bogus options\n");
  goto fail_dput;
 }


 if (sbi->max_proto < AUTOFS_MIN_PROTO_VERSION ||
     sbi->min_proto > AUTOFS_MAX_PROTO_VERSION) {
  pr_err("kernel does not match daemon version "
         "daemon (%d, %d) kernel (%d, %d)\n",
         sbi->min_proto, sbi->max_proto,
         AUTOFS_MIN_PROTO_VERSION, AUTOFS_MAX_PROTO_VERSION);
  goto fail_dput;
 }


 if (sbi->max_proto > AUTOFS_MAX_PROTO_VERSION)
  sbi->version = AUTOFS_MAX_PROTO_VERSION;
 else
  sbi->version = sbi->max_proto;
 sbi->sub_version = AUTOFS_PROTO_SUBVERSION;

 if (pgrp_set) {
  sbi->oz_pgrp = find_get_pid(pgrp);
  if (!sbi->oz_pgrp) {
   pr_err("could not find process group %d\n",
    pgrp);
   goto fail_dput;
  }
 } else {
  sbi->oz_pgrp = get_task_pid(current, PIDTYPE_PGID);
 }

 if (autofs_type_trigger(sbi->type))
  __managed_dentry_set_managed(root);

 root_inode->i_fop = &autofs_root_operations;
 root_inode->i_op = &autofs_dir_inode_operations;

 pr_debug("pipe fd = %d, pgrp = %u\n",
   sbi->pipefd, pid_nr(sbi->oz_pgrp));
 pipe = fget(sbi->pipefd);

 if (!pipe) {
  pr_err("could not open pipe file descriptor\n");
  goto fail_put_pid;
 }
 ret = autofs_prepare_pipe(pipe);
 if (ret < 0)
  goto fail_fput;
 sbi->pipe = pipe;
 sbi->flags &= ~AUTOFS_SBI_CATATONIC;




 s->s_root = root;
 return 0;




fail_fput:
 pr_err("pipe file descriptor does not contain proper ops\n");
 fput(pipe);
fail_put_pid:
 put_pid(sbi->oz_pgrp);
fail_dput:
 dput(root);
 goto fail_free;
fail_ino:
 autofs_free_ino(ino);
fail_free:
 kfree(sbi);
 s->s_fs_info = ((void*)0);
 return ret;
}
