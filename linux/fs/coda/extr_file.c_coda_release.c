
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_data; int * i_mapping; int i_sb; } ;
struct file {unsigned short f_flags; int * private_data; TYPE_1__* f_cred; } ;
struct coda_inode_info {int c_lock; scalar_t__ c_mapcount; } ;
struct coda_file_info {int cfi_container; scalar_t__ cfi_mapcount; } ;
struct TYPE_2__ {int fsuid; } ;


 struct coda_inode_info* ITOC (struct inode*) ;
 unsigned short O_EXCL ;
 unsigned short coda_flags_to_cflags (unsigned short) ;
 struct coda_file_info* coda_ftoc (struct file*) ;
 int coda_i2f (struct inode*) ;
 struct inode* file_inode (int ) ;
 int fput (int ) ;
 int kfree (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int venus_close (int ,int ,unsigned short,int ) ;

int coda_release(struct inode *coda_inode, struct file *coda_file)
{
 unsigned short flags = (coda_file->f_flags) & (~O_EXCL);
 unsigned short coda_flags = coda_flags_to_cflags(flags);
 struct coda_file_info *cfi;
 struct coda_inode_info *cii;
 struct inode *host_inode;
 int err;

 cfi = coda_ftoc(coda_file);

 err = venus_close(coda_inode->i_sb, coda_i2f(coda_inode),
     coda_flags, coda_file->f_cred->fsuid);

 host_inode = file_inode(cfi->cfi_container);
 cii = ITOC(coda_inode);


 spin_lock(&cii->c_lock);
 if (coda_inode->i_mapping == &host_inode->i_data) {
  cii->c_mapcount -= cfi->cfi_mapcount;
  if (!cii->c_mapcount)
   coda_inode->i_mapping = &coda_inode->i_data;
 }
 spin_unlock(&cii->c_lock);

 fput(cfi->cfi_container);
 kfree(coda_file->private_data);
 coda_file->private_data = ((void*)0);



 return 0;
}
