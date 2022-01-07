
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct reparse_symlink_data_buffer {int dummy; } ;
struct reparse_posix_data {int dummy; } ;
struct reparse_data_buffer {int ReparseTag; int ReparseDataLength; } ;
struct cifs_sb_info {int dummy; } ;


 int EIO ;
 int EOPNOTSUPP ;


 int VFS ;
 int cifs_dbg (int ,char*,int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int parse_reparse_posix (struct reparse_posix_data*,int,char**,struct cifs_sb_info*) ;
 int parse_reparse_symlink (struct reparse_symlink_data_buffer*,int,char**,struct cifs_sb_info*) ;

__attribute__((used)) static int
parse_reparse_point(struct reparse_data_buffer *buf,
      u32 plen, char **target_path,
      struct cifs_sb_info *cifs_sb)
{
 if (plen < sizeof(struct reparse_data_buffer)) {
  cifs_dbg(VFS, "reparse buffer is too small. Must be "
    "at least 8 bytes but was %d\n", plen);
  return -EIO;
 }

 if (plen < le16_to_cpu(buf->ReparseDataLength) +
     sizeof(struct reparse_data_buffer)) {
  cifs_dbg(VFS, "srv returned invalid reparse buf "
    "length: %d\n", plen);
  return -EIO;
 }


 switch (le32_to_cpu(buf->ReparseTag)) {
 case 129:
  return parse_reparse_posix(
   (struct reparse_posix_data *)buf,
   plen, target_path, cifs_sb);
 case 128:
  return parse_reparse_symlink(
   (struct reparse_symlink_data_buffer *)buf,
   plen, target_path, cifs_sb);
 default:
  cifs_dbg(VFS, "srv returned unknown symlink buffer "
    "tag:0x%08x\n", le32_to_cpu(buf->ReparseTag));
  return -EOPNOTSUPP;
 }
}
