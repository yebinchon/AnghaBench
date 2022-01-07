
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_switch_nvm {int buf; int id; scalar_t__ active; scalar_t__ non_active; int authenticating; } ;
struct tb_switch {struct tb_switch_nvm* nvm; } ;


 int ida_simple_remove (int *,int ) ;
 int kfree (struct tb_switch_nvm*) ;
 int nvm_clear_auth_status (struct tb_switch*) ;
 int nvm_ida ;
 int nvmem_unregister (scalar_t__) ;
 int vfree (int ) ;

__attribute__((used)) static void tb_switch_nvm_remove(struct tb_switch *sw)
{
 struct tb_switch_nvm *nvm;

 nvm = sw->nvm;
 sw->nvm = ((void*)0);

 if (!nvm)
  return;


 if (!nvm->authenticating)
  nvm_clear_auth_status(sw);

 if (nvm->non_active)
  nvmem_unregister(nvm->non_active);
 if (nvm->active)
  nvmem_unregister(nvm->active);
 ida_simple_remove(&nvm_ida, nvm->id);
 vfree(nvm->buf);
 kfree(nvm);
}
