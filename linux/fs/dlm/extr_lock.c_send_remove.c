
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_hash; int res_length; int res_name; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_message {int m_hash; int m_extra; } ;


 int DLM_MSG_REMOVE ;
 int create_message (struct dlm_rsb*,int *,int,int ,struct dlm_message**,struct dlm_mhandle**) ;
 int dlm_dir_nodeid (struct dlm_rsb*) ;
 int memcpy (int ,int ,int ) ;
 int send_message (struct dlm_mhandle*,struct dlm_message*) ;

__attribute__((used)) static int send_remove(struct dlm_rsb *r)
{
 struct dlm_message *ms;
 struct dlm_mhandle *mh;
 int to_nodeid, error;

 to_nodeid = dlm_dir_nodeid(r);

 error = create_message(r, ((void*)0), to_nodeid, DLM_MSG_REMOVE, &ms, &mh);
 if (error)
  goto out;

 memcpy(ms->m_extra, r->res_name, r->res_length);
 ms->m_hash = r->res_hash;

 error = send_message(mh, ms);
 out:
 return error;
}
