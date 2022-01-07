
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_message {int m_remid; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int _receive_convert_reply (struct dlm_lkb*,struct dlm_message*) ;
 int dlm_put_lkb (struct dlm_lkb*) ;
 int find_lkb (struct dlm_ls*,int ,struct dlm_lkb**) ;

__attribute__((used)) static int receive_convert_reply(struct dlm_ls *ls, struct dlm_message *ms)
{
 struct dlm_lkb *lkb;
 int error;

 error = find_lkb(ls, ms->m_remid, &lkb);
 if (error)
  return error;

 _receive_convert_reply(lkb, ms);
 dlm_put_lkb(lkb);
 return 0;
}
