
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_rsb {int dummy; } ;
struct dlm_mhandle {int dummy; } ;
struct TYPE_2__ {int h_nodeid; } ;
struct dlm_message {int m_result; int m_nodeid; int m_lkid; TYPE_1__ m_header; } ;
struct dlm_ls {struct dlm_rsb ls_stub_rsb; } ;


 int DLM_MSG_LOOKUP_REPLY ;
 int create_message (struct dlm_rsb*,int *,int,int ,struct dlm_message**,struct dlm_mhandle**) ;
 int send_message (struct dlm_mhandle*,struct dlm_message*) ;

__attribute__((used)) static int send_lookup_reply(struct dlm_ls *ls, struct dlm_message *ms_in,
        int ret_nodeid, int rv)
{
 struct dlm_rsb *r = &ls->ls_stub_rsb;
 struct dlm_message *ms;
 struct dlm_mhandle *mh;
 int error, nodeid = ms_in->m_header.h_nodeid;

 error = create_message(r, ((void*)0), nodeid, DLM_MSG_LOOKUP_REPLY, &ms, &mh);
 if (error)
  goto out;

 ms->m_lkid = ms_in->m_lkid;
 ms->m_result = rv;
 ms->m_nodeid = ret_nodeid;

 error = send_message(mh, ms);
 out:
 return error;
}
