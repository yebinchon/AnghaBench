
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct inode {scalar_t__ i_ino; int i_atime; int i_ctime; int i_mtime; } ;
struct dir_entry_t {int AccessTimestamp; int CreateTimestamp; int ModifyTimestamp; int Size; int Attr; } ;


 scalar_t__ EXFAT_ROOT_INO ;
 int exfat_make_attr (struct inode*) ;
 int exfat_time_unix2fat (int *,int *) ;
 int ffsWriteStat (struct inode*,struct dir_entry_t*) ;
 int i_size_read (struct inode*) ;

__attribute__((used)) static int exfat_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 struct dir_entry_t info;

 if (inode->i_ino == EXFAT_ROOT_INO)
  return 0;

 info.Attr = exfat_make_attr(inode);
 info.Size = i_size_read(inode);

 exfat_time_unix2fat(&inode->i_mtime, &info.ModifyTimestamp);
 exfat_time_unix2fat(&inode->i_ctime, &info.CreateTimestamp);
 exfat_time_unix2fat(&inode->i_atime, &info.AccessTimestamp);

 ffsWriteStat(inode, &info);

 return 0;
}
