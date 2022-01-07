
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; int i_mtime; int i_atime; int i_gid; int i_uid; int i_mode; } ;
struct iattr {int ia_ctime; int ia_mtime; int ia_atime; int ia_gid; int ia_uid; int ia_mode; } ;



__attribute__((used)) static inline void set_inode_attr(struct inode * inode, struct iattr * iattr)
{
 inode->i_mode = iattr->ia_mode;
 inode->i_uid = iattr->ia_uid;
 inode->i_gid = iattr->ia_gid;
 inode->i_atime = iattr->ia_atime;
 inode->i_mtime = iattr->ia_mtime;
 inode->i_ctime = iattr->ia_ctime;
}
