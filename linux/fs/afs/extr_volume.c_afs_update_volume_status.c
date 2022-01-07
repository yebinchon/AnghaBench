
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct key {int dummy; } ;
struct afs_volume {scalar_t__ name_len; int type; TYPE_1__* cell; int servers_lock; int flags; scalar_t__ update_at; scalar_t__ servers_seq; struct afs_vldb_entry* servers; int name; int vid; } ;
struct afs_vldb_entry {scalar_t__ name_len; scalar_t__ seq; int name; } ;
struct afs_server_list {scalar_t__ name_len; scalar_t__ seq; int name; } ;
struct TYPE_3__ {int net; } ;


 int AFS_MAXVOLNAME ;
 int AFS_VOLUME_NEEDS_UPDATE ;
 scalar_t__ IS_ERR (struct afs_vldb_entry*) ;
 int PTR_ERR (struct afs_vldb_entry*) ;
 int _enter (char*) ;
 int _leave (char*,int) ;
 struct afs_vldb_entry* afs_alloc_server_list (TYPE_1__*,struct key*,struct afs_vldb_entry*,int) ;
 scalar_t__ afs_annotate_server_list (struct afs_vldb_entry*,struct afs_vldb_entry*) ;
 int afs_put_serverlist (int ,struct afs_vldb_entry*) ;
 struct afs_vldb_entry* afs_vl_lookup_vldb (TYPE_1__*,struct key*,char*,int) ;
 scalar_t__ afs_volume_record_life ;
 int clear_bit (int ,int *) ;
 int kfree (struct afs_vldb_entry*) ;
 scalar_t__ ktime_get_real_seconds () ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int memcpy (int ,int ,int ) ;
 int smp_wmb () ;
 int sprintf (char*,char*,int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int afs_update_volume_status(struct afs_volume *volume, struct key *key)
{
 struct afs_server_list *new, *old, *discard;
 struct afs_vldb_entry *vldb;
 char idbuf[16];
 int ret, idsz;

 _enter("");




 idsz = sprintf(idbuf, "%llu", volume->vid);

 vldb = afs_vl_lookup_vldb(volume->cell, key, idbuf, idsz);
 if (IS_ERR(vldb)) {
  ret = PTR_ERR(vldb);
  goto error;
 }


 if (vldb->name_len != volume->name_len ||
     memcmp(vldb->name, volume->name, vldb->name_len) != 0) {

  memcpy(volume->name, vldb->name, AFS_MAXVOLNAME);
  volume->name_len = vldb->name_len;
 }


 new = afs_alloc_server_list(volume->cell, key,
        vldb, (1 << volume->type));
 if (IS_ERR(new)) {
  ret = PTR_ERR(new);
  goto error_vldb;
 }

 write_lock(&volume->servers_lock);

 discard = new;
 old = volume->servers;
 if (afs_annotate_server_list(new, old)) {
  new->seq = volume->servers_seq + 1;
  volume->servers = new;
  smp_wmb();
  volume->servers_seq++;
  discard = old;
 }

 volume->update_at = ktime_get_real_seconds() + afs_volume_record_life;
 clear_bit(AFS_VOLUME_NEEDS_UPDATE, &volume->flags);
 write_unlock(&volume->servers_lock);
 ret = 0;

 afs_put_serverlist(volume->cell->net, discard);
error_vldb:
 kfree(vldb);
error:
 _leave(" = %d", ret);
 return ret;
}
