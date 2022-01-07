
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_mhandle {int dummy; } ;
struct dlm_message {int dummy; } ;


 int dlm_lowcomms_commit_buffer (struct dlm_mhandle*) ;
 int dlm_message_out (struct dlm_message*) ;

__attribute__((used)) static int send_message(struct dlm_mhandle *mh, struct dlm_message *ms)
{
 dlm_message_out(ms);
 dlm_lowcomms_commit_buffer(mh);
 return 0;
}
