
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct file {unsigned short f_flags; struct coda_file_info* private_data; } ;
struct coda_file_info {int cfi_access_intent; struct file* cfi_container; scalar_t__ cfi_mapcount; int cfi_magic; } ;


 int BUG_ON (int ) ;
 int CODA_MAGIC ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int O_APPEND ;
 unsigned short O_EXCL ;
 int O_SYNC ;
 unsigned short coda_flags_to_cflags (unsigned short) ;
 int coda_i2f (struct inode*) ;
 int kfree (struct coda_file_info*) ;
 struct coda_file_info* kmalloc (int,int ) ;
 int venus_open (int ,int ,unsigned short,struct file**) ;

int coda_open(struct inode *coda_inode, struct file *coda_file)
{
 struct file *host_file = ((void*)0);
 int error;
 unsigned short flags = coda_file->f_flags & (~O_EXCL);
 unsigned short coda_flags = coda_flags_to_cflags(flags);
 struct coda_file_info *cfi;

 cfi = kmalloc(sizeof(struct coda_file_info), GFP_KERNEL);
 if (!cfi)
  return -ENOMEM;

 error = venus_open(coda_inode->i_sb, coda_i2f(coda_inode), coda_flags,
      &host_file);
 if (!host_file)
  error = -EIO;

 if (error) {
  kfree(cfi);
  return error;
 }

 host_file->f_flags |= coda_file->f_flags & (O_APPEND | O_SYNC);

 cfi->cfi_magic = CODA_MAGIC;
 cfi->cfi_mapcount = 0;
 cfi->cfi_container = host_file;

 cfi->cfi_access_intent = 1;

 BUG_ON(coda_file->private_data != ((void*)0));
 coda_file->private_data = cfi;
 return 0;
}
