
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_volume {int dummy; } ;
struct afs_vldb_entry {unsigned long flags; int error; } ;
struct afs_fs_context {unsigned long type; scalar_t__ force; int volnamesz; int volname; int key; int cell; } ;


 unsigned long AFSVL_ROVOL ;
 unsigned long AFSVL_RWVOL ;
 int AFS_VLDB_HAS_RO ;
 int AFS_VLDB_HAS_RW ;
 int AFS_VLDB_QUERY_ERROR ;
 int ENOMEDIUM ;
 struct afs_volume* ERR_CAST (struct afs_vldb_entry*) ;
 struct afs_volume* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct afs_vldb_entry*) ;
 struct afs_volume* afs_alloc_volume (struct afs_fs_context*,struct afs_vldb_entry*,unsigned long) ;
 struct afs_vldb_entry* afs_vl_lookup_vldb (int ,int ,int ,int ) ;
 int kfree (struct afs_vldb_entry*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

struct afs_volume *afs_create_volume(struct afs_fs_context *params)
{
 struct afs_vldb_entry *vldb;
 struct afs_volume *volume;
 unsigned long type_mask = 1UL << params->type;

 vldb = afs_vl_lookup_vldb(params->cell, params->key,
      params->volname, params->volnamesz);
 if (IS_ERR(vldb))
  return ERR_CAST(vldb);

 if (test_bit(AFS_VLDB_QUERY_ERROR, &vldb->flags)) {
  volume = ERR_PTR(vldb->error);
  goto error;
 }


 volume = ERR_PTR(-ENOMEDIUM);
 if (params->force) {
  if (!(vldb->flags & type_mask))
   goto error;
 } else if (test_bit(AFS_VLDB_HAS_RO, &vldb->flags)) {
  params->type = AFSVL_ROVOL;
 } else if (test_bit(AFS_VLDB_HAS_RW, &vldb->flags)) {
  params->type = AFSVL_RWVOL;
 } else {
  goto error;
 }

 type_mask = 1UL << params->type;
 volume = afs_alloc_volume(params, vldb, type_mask);

error:
 kfree(vldb);
 return volume;
}
