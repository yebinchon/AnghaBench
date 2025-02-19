
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_bdev; TYPE_1__* i_mapping; int i_mode; } ;
struct fsg_lun {int initially_ro; unsigned int blksize; unsigned int blkbits; int ro; unsigned int file_length; unsigned int num_sectors; struct file* filp; scalar_t__ cdrom; } ;
struct file {int f_mode; } ;
typedef unsigned int loff_t ;
struct TYPE_2__ {int host; } ;


 int EACCES ;
 int EINVAL ;
 int EROFS ;
 int ETOOSMALL ;
 int FMODE_CAN_READ ;
 int FMODE_CAN_WRITE ;
 int FMODE_WRITE ;
 scalar_t__ IS_ERR (struct file*) ;
 int LDBG (struct fsg_lun*,char*,char const*) ;
 int LINFO (struct fsg_lun*,char*,...) ;
 int O_LARGEFILE ;
 int O_RDONLY ;
 int O_RDWR ;
 int PTR_ERR (struct file*) ;
 int S_ISBLK (int ) ;
 int S_ISREG (int ) ;
 unsigned int bdev_logical_block_size (scalar_t__) ;
 unsigned int blksize_bits (unsigned int) ;
 struct inode* file_inode (struct file*) ;
 struct file* filp_open (char const*,int,int ) ;
 int fput (struct file*) ;
 int fsg_lun_close (struct fsg_lun*) ;
 scalar_t__ fsg_lun_is_open (struct fsg_lun*) ;
 unsigned int i_size_read (int ) ;

int fsg_lun_open(struct fsg_lun *curlun, const char *filename)
{
 int ro;
 struct file *filp = ((void*)0);
 int rc = -EINVAL;
 struct inode *inode = ((void*)0);
 loff_t size;
 loff_t num_sectors;
 loff_t min_sectors;
 unsigned int blkbits;
 unsigned int blksize;


 ro = curlun->initially_ro;
 if (!ro) {
  filp = filp_open(filename, O_RDWR | O_LARGEFILE, 0);
  if (PTR_ERR(filp) == -EROFS || PTR_ERR(filp) == -EACCES)
   ro = 1;
 }
 if (ro)
  filp = filp_open(filename, O_RDONLY | O_LARGEFILE, 0);
 if (IS_ERR(filp)) {
  LINFO(curlun, "unable to open backing file: %s\n", filename);
  return PTR_ERR(filp);
 }

 if (!(filp->f_mode & FMODE_WRITE))
  ro = 1;

 inode = file_inode(filp);
 if ((!S_ISREG(inode->i_mode) && !S_ISBLK(inode->i_mode))) {
  LINFO(curlun, "invalid file type: %s\n", filename);
  goto out;
 }





 if (!(filp->f_mode & FMODE_CAN_READ)) {
  LINFO(curlun, "file not readable: %s\n", filename);
  goto out;
 }
 if (!(filp->f_mode & FMODE_CAN_WRITE))
  ro = 1;

 size = i_size_read(inode->i_mapping->host);
 if (size < 0) {
  LINFO(curlun, "unable to find file size: %s\n", filename);
  rc = (int) size;
  goto out;
 }

 if (curlun->cdrom) {
  blksize = 2048;
  blkbits = 11;
 } else if (inode->i_bdev) {
  blksize = bdev_logical_block_size(inode->i_bdev);
  blkbits = blksize_bits(blksize);
 } else {
  blksize = 512;
  blkbits = 9;
 }

 num_sectors = size >> blkbits;
 min_sectors = 1;
 if (curlun->cdrom) {
  min_sectors = 300;
  if (num_sectors >= 256*60*75) {
   num_sectors = 256*60*75 - 1;
   LINFO(curlun, "file too big: %s\n", filename);
   LINFO(curlun, "using only first %d blocks\n",
     (int) num_sectors);
  }
 }
 if (num_sectors < min_sectors) {
  LINFO(curlun, "file too small: %s\n", filename);
  rc = -ETOOSMALL;
  goto out;
 }

 if (fsg_lun_is_open(curlun))
  fsg_lun_close(curlun);

 curlun->blksize = blksize;
 curlun->blkbits = blkbits;
 curlun->ro = ro;
 curlun->filp = filp;
 curlun->file_length = size;
 curlun->num_sectors = num_sectors;
 LDBG(curlun, "open backing file: %s\n", filename);
 return 0;

out:
 fput(filp);
 return rc;
}
