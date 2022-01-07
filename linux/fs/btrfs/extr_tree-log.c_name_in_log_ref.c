
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root {int dummy; } ;
struct btrfs_key {int offset; int type; int objectid; } ;


 int BTRFS_INODE_EXTREF_KEY ;
 int BTRFS_INODE_REF_KEY ;
 scalar_t__ backref_in_log (struct btrfs_root*,struct btrfs_key*,int const,char const*,int const) ;
 int btrfs_extref_hash (int const,char const*,int const) ;

__attribute__((used)) static bool name_in_log_ref(struct btrfs_root *log_root,
       const char *name, const int name_len,
       const u64 dirid, const u64 ino)
{
 struct btrfs_key search_key;

 search_key.objectid = ino;
 search_key.type = BTRFS_INODE_REF_KEY;
 search_key.offset = dirid;
 if (backref_in_log(log_root, &search_key, dirid, name, name_len))
  return 1;

 search_key.type = BTRFS_INODE_EXTREF_KEY;
 search_key.offset = btrfs_extref_hash(dirid, name, name_len);
 if (backref_in_log(log_root, &search_key, dirid, name, name_len))
  return 1;

 return 0;
}
