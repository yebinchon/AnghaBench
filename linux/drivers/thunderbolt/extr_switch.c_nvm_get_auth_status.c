
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_switch {int dummy; } ;
struct nvm_auth_status {int status; } ;


 struct nvm_auth_status* __nvm_get_auth_status (struct tb_switch const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvm_auth_status_lock ;

__attribute__((used)) static void nvm_get_auth_status(const struct tb_switch *sw, u32 *status)
{
 struct nvm_auth_status *st;

 mutex_lock(&nvm_auth_status_lock);
 st = __nvm_get_auth_status(sw);
 mutex_unlock(&nvm_auth_status_lock);

 *status = st ? st->status : 0;
}
