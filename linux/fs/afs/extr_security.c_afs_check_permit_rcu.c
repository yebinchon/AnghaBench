
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


 int _enter (char*,int ,int ,int ) ;
 int _leave (char*,...) ;
 int key_serial (struct key*) ;
 struct afs_permits* rcu_dereference (int ) ;

__attribute__((used)) static bool afs_check_permit_rcu(struct afs_vnode *vnode, struct key *key,
     afs_access_t *_access)
{
 const struct afs_permits *permits;
 int i;

 _enter("{%llx:%llu},%x",
        vnode->fid.vid, vnode->fid.vnode, key_serial(key));


 if (key == vnode->volume->cell->anonymous_key) {
  *_access = vnode->status.anon_access;
  _leave(" = t [anon %x]", *_access);
  return 1;
 }

 permits = rcu_dereference(vnode->permit_cache);
 if (permits) {
  for (i = 0; i < permits->nr_permits; i++) {
   if (permits->permits[i].key < key)
    continue;
   if (permits->permits[i].key > key)
    break;

   *_access = permits->permits[i].access;
   _leave(" = %u [perm %x]", !permits->invalidated, *_access);
   return !permits->invalidated;
  }
 }

 _leave(" = f");
 return 0;
}
