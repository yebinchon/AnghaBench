
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dlm_message {scalar_t__ m_type; } ;
struct dlm_ls {int ls_count; } ;


 scalar_t__ DLM_MSG_LOOKUP ;
 scalar_t__ DLM_MSG_LOOKUP_REPLY ;
 scalar_t__ DLM_MSG_REMOVE ;
 scalar_t__ dlm_is_removed (struct dlm_ls*,int) ;
 int dlm_no_directory (struct dlm_ls*) ;

__attribute__((used)) static int purge_request(struct dlm_ls *ls, struct dlm_message *ms, int nodeid)
{
 uint32_t type = ms->m_type;


 if (!ls->ls_count)
  return 1;

 if (dlm_is_removed(ls, nodeid))
  return 1;




 if (type == DLM_MSG_REMOVE ||
     type == DLM_MSG_LOOKUP ||
     type == DLM_MSG_LOOKUP_REPLY)
  return 1;

 if (!dlm_no_directory(ls))
  return 0;

 return 1;
}
