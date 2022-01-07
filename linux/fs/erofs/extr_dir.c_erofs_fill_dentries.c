
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
typedef struct erofs_dirent {int nid; int nameoff; int file_type; } const erofs_dirent ;
struct dir_context {int dummy; } ;
struct TYPE_2__ {int nid; } ;


 int DBG_BUGON (int) ;
 int EFSCORRUPTED ;
 TYPE_1__* EROFS_I (struct inode*) ;
 unsigned int EROFS_NAME_LEN ;
 int debug_one_dentry (unsigned char,char const*,unsigned int) ;
 int dir_emit (struct dir_context*,char const*,unsigned int,int ,unsigned char) ;
 int erofs_err (int ,char*,int ) ;
 unsigned char fs_ftype_to_dtype (int ) ;
 unsigned int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 unsigned int strnlen (char const*,unsigned int) ;

__attribute__((used)) static int erofs_fill_dentries(struct inode *dir, struct dir_context *ctx,
          void *dentry_blk, unsigned int *ofs,
          unsigned int nameoff, unsigned int maxsize)
{
 struct erofs_dirent *de = dentry_blk + *ofs;
 const struct erofs_dirent *end = dentry_blk + nameoff;

 while (de < end) {
  const char *de_name;
  unsigned int de_namelen;
  unsigned char d_type;

  d_type = fs_ftype_to_dtype(de->file_type);

  nameoff = le16_to_cpu(de->nameoff);
  de_name = (char *)dentry_blk + nameoff;


  if (de + 1 >= end)
   de_namelen = strnlen(de_name, maxsize - nameoff);
  else
   de_namelen = le16_to_cpu(de[1].nameoff) - nameoff;


  if (nameoff + de_namelen > maxsize ||
      de_namelen > EROFS_NAME_LEN) {
   erofs_err(dir->i_sb, "bogus dirent @ nid %llu",
      EROFS_I(dir)->nid);
   DBG_BUGON(1);
   return -EFSCORRUPTED;
  }

  debug_one_dentry(d_type, de_name, de_namelen);
  if (!dir_emit(ctx, de_name, de_namelen,
         le64_to_cpu(de->nid), d_type))

   return 1;
  ++de;
  *ofs += sizeof(struct erofs_dirent);
 }
 *ofs = maxsize;
 return 0;
}
