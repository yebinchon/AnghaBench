
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dlm_rsb {int dummy; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_message {char* m_extra; int m_hash; } ;
struct dlm_ls {int ls_rsbtbl_size; int ls_remove_len; char* ls_remove_name; int ls_remove_spin; TYPE_1__* ls_rsbtbl; } ;
typedef int name ;
struct TYPE_2__ {int lock; int toss; int keep; } ;


 int DLM_MSG_REMOVE ;
 int DLM_RESNAME_MAXLEN ;
 int _create_message (struct dlm_ls*,int,int,int ,struct dlm_message**,struct dlm_mhandle**) ;
 int dlm_hash2nodeid (struct dlm_ls*,int) ;
 int dlm_search_rsb_tree (int *,char*,int,struct dlm_rsb**) ;
 int jhash (char*,int,int ) ;
 int log_error (struct dlm_ls*,char*,...) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int send_message (struct dlm_mhandle*,struct dlm_message*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void send_repeat_remove(struct dlm_ls *ls, char *ms_name, int len)
{
 char name[DLM_RESNAME_MAXLEN + 1];
 struct dlm_message *ms;
 struct dlm_mhandle *mh;
 struct dlm_rsb *r;
 uint32_t hash, b;
 int rv, dir_nodeid;

 memset(name, 0, sizeof(name));
 memcpy(name, ms_name, len);

 hash = jhash(name, len, 0);
 b = hash & (ls->ls_rsbtbl_size - 1);

 dir_nodeid = dlm_hash2nodeid(ls, hash);

 log_error(ls, "send_repeat_remove dir %d %s", dir_nodeid, name);

 spin_lock(&ls->ls_rsbtbl[b].lock);
 rv = dlm_search_rsb_tree(&ls->ls_rsbtbl[b].keep, name, len, &r);
 if (!rv) {
  spin_unlock(&ls->ls_rsbtbl[b].lock);
  log_error(ls, "repeat_remove on keep %s", name);
  return;
 }

 rv = dlm_search_rsb_tree(&ls->ls_rsbtbl[b].toss, name, len, &r);
 if (!rv) {
  spin_unlock(&ls->ls_rsbtbl[b].lock);
  log_error(ls, "repeat_remove on toss %s", name);
  return;
 }



 spin_lock(&ls->ls_remove_spin);
 ls->ls_remove_len = len;
 memcpy(ls->ls_remove_name, name, DLM_RESNAME_MAXLEN);
 spin_unlock(&ls->ls_remove_spin);
 spin_unlock(&ls->ls_rsbtbl[b].lock);

 rv = _create_message(ls, sizeof(struct dlm_message) + len,
        dir_nodeid, DLM_MSG_REMOVE, &ms, &mh);
 if (rv)
  return;

 memcpy(ms->m_extra, name, len);
 ms->m_hash = hash;

 send_message(mh, ms);

 spin_lock(&ls->ls_remove_spin);
 ls->ls_remove_len = 0;
 memset(ls->ls_remove_name, 0, DLM_RESNAME_MAXLEN);
 spin_unlock(&ls->ls_remove_spin);
}
