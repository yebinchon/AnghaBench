
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_switch {int uuid; } ;
struct nvm_auth_status {int status; int list; int uuid; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ WARN_ON (int) ;
 struct nvm_auth_status* __nvm_get_auth_status (struct tb_switch const*) ;
 struct nvm_auth_status* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvm_auth_status_cache ;
 int nvm_auth_status_lock ;

__attribute__((used)) static void nvm_set_auth_status(const struct tb_switch *sw, u32 status)
{
 struct nvm_auth_status *st;

 if (WARN_ON(!sw->uuid))
  return;

 mutex_lock(&nvm_auth_status_lock);
 st = __nvm_get_auth_status(sw);

 if (!st) {
  st = kzalloc(sizeof(*st), GFP_KERNEL);
  if (!st)
   goto unlock;

  memcpy(&st->uuid, sw->uuid, sizeof(st->uuid));
  INIT_LIST_HEAD(&st->list);
  list_add_tail(&st->list, &nvm_auth_status_cache);
 }

 st->status = status;
unlock:
 mutex_unlock(&nvm_auth_status_lock);
}
