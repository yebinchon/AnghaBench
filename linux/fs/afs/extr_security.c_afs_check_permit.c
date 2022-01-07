
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct key {int dummy; } ;
struct TYPE_9__ {int anon_access; } ;
struct TYPE_6__ {int vnode; int vid; } ;
struct afs_vnode {int permit_cache; TYPE_4__ status; TYPE_3__* volume; TYPE_1__ fid; } ;
struct afs_permits {int nr_permits; int invalidated; TYPE_5__* permits; } ;
typedef int afs_access_t ;
struct TYPE_10__ {int access; struct key* key; } ;
struct TYPE_8__ {TYPE_2__* cell; } ;
struct TYPE_7__ {struct key* anonymous_key; } ;


 int _debug (char*) ;
 int _enter (char*,int ,int ,int ) ;
 int _leave (char*,int) ;
 int afs_fetch_status (struct afs_vnode*,struct key*,int,int*) ;
 int key_serial (struct key*) ;
 struct afs_permits* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int afs_check_permit(struct afs_vnode *vnode, struct key *key,
       afs_access_t *_access)
{
 struct afs_permits *permits;
 bool valid = 0;
 int i, ret;

 _enter("{%llx:%llu},%x",
        vnode->fid.vid, vnode->fid.vnode, key_serial(key));


 if (key == vnode->volume->cell->anonymous_key) {
  _debug("anon");
  *_access = vnode->status.anon_access;
  valid = 1;
 } else {
  rcu_read_lock();
  permits = rcu_dereference(vnode->permit_cache);
  if (permits) {
   for (i = 0; i < permits->nr_permits; i++) {
    if (permits->permits[i].key < key)
     continue;
    if (permits->permits[i].key > key)
     break;

    *_access = permits->permits[i].access;
    valid = !permits->invalidated;
    break;
   }
  }
  rcu_read_unlock();
 }

 if (!valid) {



  _debug("no valid permit");

  ret = afs_fetch_status(vnode, key, 0, _access);
  if (ret < 0) {
   *_access = 0;
   _leave(" = %d", ret);
   return ret;
  }
 }

 _leave(" = 0 [access %x]", *_access);
 return 0;
}
