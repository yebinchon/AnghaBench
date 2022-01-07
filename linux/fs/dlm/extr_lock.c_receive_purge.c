
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_message {int m_pid; int m_nodeid; } ;
struct dlm_ls {int dummy; } ;


 int do_purge (struct dlm_ls*,int ,int ) ;

__attribute__((used)) static void receive_purge(struct dlm_ls *ls, struct dlm_message *ms)
{
 do_purge(ls, ms->m_nodeid, ms->m_pid);
}
