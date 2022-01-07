
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btrfs_fs_devices {int metadata_uuid; int fsid; int fs_list; int alloc_list; int devices; int device_list_mutex; } ;


 int BTRFS_FSID_SIZE ;
 int ENOMEM ;
 struct btrfs_fs_devices* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct btrfs_fs_devices* kzalloc (int,int ) ;
 int memcpy (int ,int const*,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct btrfs_fs_devices *alloc_fs_devices(const u8 *fsid,
       const u8 *metadata_fsid)
{
 struct btrfs_fs_devices *fs_devs;

 fs_devs = kzalloc(sizeof(*fs_devs), GFP_KERNEL);
 if (!fs_devs)
  return ERR_PTR(-ENOMEM);

 mutex_init(&fs_devs->device_list_mutex);

 INIT_LIST_HEAD(&fs_devs->devices);
 INIT_LIST_HEAD(&fs_devs->alloc_list);
 INIT_LIST_HEAD(&fs_devs->fs_list);
 if (fsid)
  memcpy(fs_devs->fsid, fsid, BTRFS_FSID_SIZE);

 if (metadata_fsid)
  memcpy(fs_devs->metadata_uuid, metadata_fsid, BTRFS_FSID_SIZE);
 else if (fsid)
  memcpy(fs_devs->metadata_uuid, fsid, BTRFS_FSID_SIZE);

 return fs_devs;
}
