
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int dummy; } ;


 int transport_deregister_session (struct se_session*) ;
 int transport_deregister_session_configfs (struct se_session*) ;

void target_remove_session(struct se_session *se_sess)
{
 transport_deregister_session_configfs(se_sess);
 transport_deregister_session(se_sess);
}
