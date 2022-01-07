
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq_entry {int recover_seq; int nodeid; int list; int request; } ;
struct TYPE_2__ {int h_length; } ;
struct dlm_message {TYPE_1__ m_header; } ;
struct dlm_ls {int ls_recover_seq; int ls_requestqueue_mutex; int ls_requestqueue; } ;


 int GFP_NOFS ;
 struct rq_entry* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int log_print (char*,int) ;
 int memcpy (int *,struct dlm_message*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void dlm_add_requestqueue(struct dlm_ls *ls, int nodeid, struct dlm_message *ms)
{
 struct rq_entry *e;
 int length = ms->m_header.h_length - sizeof(struct dlm_message);

 e = kmalloc(sizeof(struct rq_entry) + length, GFP_NOFS);
 if (!e) {
  log_print("dlm_add_requestqueue: out of memory len %d", length);
  return;
 }

 e->recover_seq = ls->ls_recover_seq & 0xFFFFFFFF;
 e->nodeid = nodeid;
 memcpy(&e->request, ms, ms->m_header.h_length);

 mutex_lock(&ls->ls_requestqueue_mutex);
 list_add_tail(&e->list, &ls->ls_requestqueue);
 mutex_unlock(&ls->ls_requestqueue_mutex);
}
