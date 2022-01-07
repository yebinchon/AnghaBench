
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_ls {int ls_timeout_mutex; } ;
struct dlm_lkb {int lkb_time_list; TYPE_1__* lkb_resource; } ;
struct TYPE_2__ {struct dlm_ls* res_ls; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unhold_lkb (struct dlm_lkb*) ;

__attribute__((used)) static void del_timeout(struct dlm_lkb *lkb)
{
 struct dlm_ls *ls = lkb->lkb_resource->res_ls;

 mutex_lock(&ls->ls_timeout_mutex);
 if (!list_empty(&lkb->lkb_time_list)) {
  list_del_init(&lkb->lkb_time_list);
  unhold_lkb(lkb);
 }
 mutex_unlock(&ls->ls_timeout_mutex);
}
