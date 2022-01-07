
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_generation; int i_ino; } ;
struct TYPE_2__ {int parent_gen; int parent_ino; int gen; int ino; } ;
struct fid {TYPE_1__ i32; } ;


 int FILEID_INO32_GEN ;
 int FILEID_INO32_GEN_PARENT ;
 int FILEID_INVALID ;

__attribute__((used)) static int export_encode_fh(struct inode *inode, struct fid *fid,
  int *max_len, struct inode *parent)
{
 int len = *max_len;
 int type = FILEID_INO32_GEN;

 if (parent && (len < 4)) {
  *max_len = 4;
  return FILEID_INVALID;
 } else if (len < 2) {
  *max_len = 2;
  return FILEID_INVALID;
 }

 len = 2;
 fid->i32.ino = inode->i_ino;
 fid->i32.gen = inode->i_generation;
 if (parent) {
  fid->i32.parent_ino = parent->i_ino;
  fid->i32.parent_gen = parent->i_generation;
  len = 4;
  type = FILEID_INO32_GEN_PARENT;
 }
 *max_len = len;
 return type;
}
