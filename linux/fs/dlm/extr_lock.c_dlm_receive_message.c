
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_message {int m_type; } ;
struct dlm_ls {int ls_generation; } ;


 int _receive_message (struct dlm_ls*,struct dlm_message*,int ) ;
 int dlm_add_requestqueue (struct dlm_ls*,int,struct dlm_message*) ;
 scalar_t__ dlm_locking_stopped (struct dlm_ls*) ;
 int dlm_wait_requestqueue (struct dlm_ls*) ;
 int log_limit (struct dlm_ls*,char*,int ,int) ;

__attribute__((used)) static void dlm_receive_message(struct dlm_ls *ls, struct dlm_message *ms,
    int nodeid)
{
 if (dlm_locking_stopped(ls)) {



  if (!ls->ls_generation) {
   log_limit(ls, "receive %d from %d ignore old gen",
      ms->m_type, nodeid);
   return;
  }

  dlm_add_requestqueue(ls, nodeid, ms);
 } else {
  dlm_wait_requestqueue(ls);
  _receive_message(ls, ms, 0);
 }
}
