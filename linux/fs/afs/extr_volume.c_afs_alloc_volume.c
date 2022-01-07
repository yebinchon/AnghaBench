
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_volume {size_t type; int cell; struct afs_server_list* servers; int name; int cb_v_break_lock; int servers_lock; int proc_link; int usage; scalar_t__ name_len; int type_force; scalar_t__ update_at; int vid; } ;
struct afs_vldb_entry {int nr_servers; unsigned long* fs_mask; scalar_t__ name_len; int name; int * vid; } ;
struct afs_server_list {int usage; } ;
struct afs_fs_context {size_t type; int net; int key; int cell; int force; } ;


 int ENOMEM ;
 struct afs_volume* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct afs_server_list*) ;
 int PTR_ERR (struct afs_server_list*) ;
 struct afs_server_list* afs_alloc_server_list (int ,int ,struct afs_vldb_entry*,unsigned long) ;
 int afs_get_cell (int ) ;
 int afs_put_cell (int ,int ) ;
 scalar_t__ afs_volume_record_life ;
 int atomic_set (int *,int) ;
 int kfree (struct afs_volume*) ;
 scalar_t__ ktime_get_real_seconds () ;
 struct afs_volume* kzalloc (int,int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int refcount_set (int *,int) ;
 int rwlock_init (int *) ;

__attribute__((used)) static struct afs_volume *afs_alloc_volume(struct afs_fs_context *params,
        struct afs_vldb_entry *vldb,
        unsigned long type_mask)
{
 struct afs_server_list *slist;
 struct afs_volume *volume;
 int ret = -ENOMEM, nr_servers = 0, i;

 for (i = 0; i < vldb->nr_servers; i++)
  if (vldb->fs_mask[i] & type_mask)
   nr_servers++;

 volume = kzalloc(sizeof(struct afs_volume), GFP_KERNEL);
 if (!volume)
  goto error_0;

 volume->vid = vldb->vid[params->type];
 volume->update_at = ktime_get_real_seconds() + afs_volume_record_life;
 volume->cell = afs_get_cell(params->cell);
 volume->type = params->type;
 volume->type_force = params->force;
 volume->name_len = vldb->name_len;

 atomic_set(&volume->usage, 1);
 INIT_LIST_HEAD(&volume->proc_link);
 rwlock_init(&volume->servers_lock);
 rwlock_init(&volume->cb_v_break_lock);
 memcpy(volume->name, vldb->name, vldb->name_len + 1);

 slist = afs_alloc_server_list(params->cell, params->key, vldb, type_mask);
 if (IS_ERR(slist)) {
  ret = PTR_ERR(slist);
  goto error_1;
 }

 refcount_set(&slist->usage, 1);
 volume->servers = slist;
 return volume;

error_1:
 afs_put_cell(params->net, volume->cell);
 kfree(volume);
error_0:
 return ERR_PTR(ret);
}
