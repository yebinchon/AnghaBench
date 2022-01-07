
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_switch {int dummy; } ;
struct nvm_auth_status {int list; } ;


 struct nvm_auth_status* __nvm_get_auth_status (struct tb_switch const*) ;
 int kfree (struct nvm_auth_status*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvm_auth_status_lock ;

__attribute__((used)) static void nvm_clear_auth_status(const struct tb_switch *sw)
{
 struct nvm_auth_status *st;

 mutex_lock(&nvm_auth_status_lock);
 st = __nvm_get_auth_status(sw);
 if (st) {
  list_del(&st->list);
  kfree(st);
 }
 mutex_unlock(&nvm_auth_status_lock);
}
