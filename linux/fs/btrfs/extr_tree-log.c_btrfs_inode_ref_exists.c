
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef void* u64 ;
struct inode {int dummy; } ;
struct btrfs_path {int * slots; int * nodes; } ;
struct btrfs_key {scalar_t__ type; void* offset; void* objectid; } ;
struct TYPE_3__ {int root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 scalar_t__ BTRFS_INODE_EXTREF_KEY ;
 scalar_t__ BTRFS_INODE_REF_KEY ;
 int ENOMEM ;
 struct btrfs_path* btrfs_alloc_path () ;
 void* btrfs_extref_hash (void* const,char const*,int const) ;
 int btrfs_find_name_in_backref (int ,int ,char const*,int const) ;
 int btrfs_find_name_in_ext_backref (int ,int ,void* const,char const*,int const) ;
 int btrfs_free_path (struct btrfs_path*) ;
 void* btrfs_ino (TYPE_1__*) ;
 int btrfs_search_slot (int *,int ,struct btrfs_key*,struct btrfs_path*,int ,int ) ;

__attribute__((used)) static int btrfs_inode_ref_exists(struct inode *inode, struct inode *dir,
      const u8 ref_type, const char *name,
      const int namelen)
{
 struct btrfs_key key;
 struct btrfs_path *path;
 const u64 parent_id = btrfs_ino(BTRFS_I(dir));
 int ret;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 key.objectid = btrfs_ino(BTRFS_I(inode));
 key.type = ref_type;
 if (key.type == BTRFS_INODE_REF_KEY)
  key.offset = parent_id;
 else
  key.offset = btrfs_extref_hash(parent_id, name, namelen);

 ret = btrfs_search_slot(((void*)0), BTRFS_I(inode)->root, &key, path, 0, 0);
 if (ret < 0)
  goto out;
 if (ret > 0) {
  ret = 0;
  goto out;
 }
 if (key.type == BTRFS_INODE_EXTREF_KEY)
  ret = !!btrfs_find_name_in_ext_backref(path->nodes[0],
    path->slots[0], parent_id, name, namelen);
 else
  ret = !!btrfs_find_name_in_backref(path->nodes[0], path->slots[0],
         name, namelen);

out:
 btrfs_free_path(path);
 return ret;
}
