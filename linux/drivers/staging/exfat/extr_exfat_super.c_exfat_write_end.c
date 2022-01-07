
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_ctime; int i_mtime; } ;
struct file_id_t {int attr; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {struct file_id_t fid; } ;


 int ATTR_ARCHIVE ;
 TYPE_1__* EXFAT_I (struct inode*) ;
 int current_time (struct inode*) ;
 int exfat_write_failed (struct address_space*,scalar_t__) ;
 int generic_write_end (struct file*,struct address_space*,scalar_t__,unsigned int,unsigned int,struct page*,void*) ;
 int mark_inode_dirty (struct inode*) ;

__attribute__((used)) static int exfat_write_end(struct file *file, struct address_space *mapping,
      loff_t pos, unsigned int len, unsigned int copied,
      struct page *pagep, void *fsdata)
{
 struct inode *inode = mapping->host;
 struct file_id_t *fid = &(EXFAT_I(inode)->fid);
 int err;

 err = generic_write_end(file, mapping, pos, len, copied, pagep, fsdata);

 if (err < len)
  exfat_write_failed(mapping, pos + len);

 if (!(err < 0) && !(fid->attr & ATTR_ARCHIVE)) {
  inode->i_mtime = inode->i_ctime = current_time(inode);
  fid->attr |= ATTR_ARCHIVE;
  mark_inode_dirty(inode);
 }
 return err;
}
