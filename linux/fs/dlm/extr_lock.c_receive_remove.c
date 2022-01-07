
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct dlm_rsb {int res_master_nodeid; int res_hashnode; int res_ref; int res_first_lkid; } ;
struct TYPE_3__ {int h_nodeid; } ;
struct dlm_message {int m_extra; int m_hash; TYPE_1__ m_header; } ;
struct dlm_ls {int ls_rsbtbl_size; TYPE_2__* ls_rsbtbl; } ;
typedef int name ;
struct TYPE_4__ {int lock; int toss; int keep; } ;


 int DLM_RESNAME_MAXLEN ;
 int dlm_free_rsb (struct dlm_rsb*) ;
 int dlm_hash2nodeid (struct dlm_ls*,int ) ;
 int dlm_our_nodeid () ;
 int dlm_print_rsb (struct dlm_rsb*) ;
 int dlm_search_rsb_tree (int *,char*,int,struct dlm_rsb**) ;
 int jhash (char*,int,int ) ;
 int kill_rsb ;
 scalar_t__ kref_put (int *,int ) ;
 int log_debug (struct dlm_ls*,char*,int,int,int ,char*) ;
 int log_error (struct dlm_ls*,char*,int,...) ;
 int memcpy (char*,int ,int) ;
 int memset (char*,int ,int) ;
 int rb_erase (int *,int *) ;
 int receive_extralen (struct dlm_message*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void receive_remove(struct dlm_ls *ls, struct dlm_message *ms)
{
 char name[DLM_RESNAME_MAXLEN+1];
 struct dlm_rsb *r;
 uint32_t hash, b;
 int rv, len, dir_nodeid, from_nodeid;

 from_nodeid = ms->m_header.h_nodeid;

 len = receive_extralen(ms);

 if (len > DLM_RESNAME_MAXLEN) {
  log_error(ls, "receive_remove from %d bad len %d",
     from_nodeid, len);
  return;
 }

 dir_nodeid = dlm_hash2nodeid(ls, ms->m_hash);
 if (dir_nodeid != dlm_our_nodeid()) {
  log_error(ls, "receive_remove from %d bad nodeid %d",
     from_nodeid, dir_nodeid);
  return;
 }
 memset(name, 0, sizeof(name));
 memcpy(name, ms->m_extra, len);

 hash = jhash(name, len, 0);
 b = hash & (ls->ls_rsbtbl_size - 1);

 spin_lock(&ls->ls_rsbtbl[b].lock);

 rv = dlm_search_rsb_tree(&ls->ls_rsbtbl[b].toss, name, len, &r);
 if (rv) {

  rv = dlm_search_rsb_tree(&ls->ls_rsbtbl[b].keep, name, len, &r);
  if (rv) {

   log_error(ls, "receive_remove from %d not found %s",
      from_nodeid, name);
   spin_unlock(&ls->ls_rsbtbl[b].lock);
   return;
  }
  if (r->res_master_nodeid != from_nodeid) {

   log_error(ls, "receive_remove keep from %d master %d",
      from_nodeid, r->res_master_nodeid);
   dlm_print_rsb(r);
   spin_unlock(&ls->ls_rsbtbl[b].lock);
   return;
  }

  log_debug(ls, "receive_remove from %d master %d first %x %s",
     from_nodeid, r->res_master_nodeid, r->res_first_lkid,
     name);
  spin_unlock(&ls->ls_rsbtbl[b].lock);
  return;
 }

 if (r->res_master_nodeid != from_nodeid) {
  log_error(ls, "receive_remove toss from %d master %d",
     from_nodeid, r->res_master_nodeid);
  dlm_print_rsb(r);
  spin_unlock(&ls->ls_rsbtbl[b].lock);
  return;
 }

 if (kref_put(&r->res_ref, kill_rsb)) {
  rb_erase(&r->res_hashnode, &ls->ls_rsbtbl[b].toss);
  spin_unlock(&ls->ls_rsbtbl[b].lock);
  dlm_free_rsb(r);
 } else {
  log_error(ls, "receive_remove from %d rsb ref error",
     from_nodeid);
  dlm_print_rsb(r);
  spin_unlock(&ls->ls_rsbtbl[b].lock);
 }
}
