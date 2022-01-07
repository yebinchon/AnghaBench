
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dlm_rsb {int dummy; } ;
struct dlm_ls {int ls_rsbtbl_size; TYPE_1__* ls_rsbtbl; } ;
struct TYPE_2__ {int lock; int toss; int keep; } ;


 int dlm_dump_rsb (struct dlm_rsb*) ;
 int dlm_search_rsb_tree (int *,char*,int,struct dlm_rsb**) ;
 int jhash (char*,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dlm_dump_rsb_name(struct dlm_ls *ls, char *name, int len)
{
 struct dlm_rsb *r = ((void*)0);
 uint32_t hash, b;
 int error;

 hash = jhash(name, len, 0);
 b = hash & (ls->ls_rsbtbl_size - 1);

 spin_lock(&ls->ls_rsbtbl[b].lock);
 error = dlm_search_rsb_tree(&ls->ls_rsbtbl[b].keep, name, len, &r);
 if (!error)
  goto out_dump;

 error = dlm_search_rsb_tree(&ls->ls_rsbtbl[b].toss, name, len, &r);
 if (error)
  goto out;
 out_dump:
 dlm_dump_rsb(r);
 out:
 spin_unlock(&ls->ls_rsbtbl[b].lock);
}
