
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_message {int dummy; } ;
struct dlm_ls {int dummy; } ;


 int _receive_message (struct dlm_ls*,struct dlm_message*,int ) ;

void dlm_receive_message_saved(struct dlm_ls *ls, struct dlm_message *ms,
          uint32_t saved_seq)
{
 _receive_message(ls, ms, saved_seq);
}
