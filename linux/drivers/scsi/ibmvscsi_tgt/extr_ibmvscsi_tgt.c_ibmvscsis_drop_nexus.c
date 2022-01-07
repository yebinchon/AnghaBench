
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int dummy; } ;
struct ibmvscsis_tport {struct ibmvscsis_nexus* ibmv_nexus; } ;
struct ibmvscsis_nexus {struct se_session* se_sess; } ;


 int ENODEV ;
 int kfree (struct ibmvscsis_nexus*) ;
 int target_remove_session (struct se_session*) ;

__attribute__((used)) static int ibmvscsis_drop_nexus(struct ibmvscsis_tport *tport)
{
 struct se_session *se_sess;
 struct ibmvscsis_nexus *nexus;

 nexus = tport->ibmv_nexus;
 if (!nexus)
  return -ENODEV;

 se_sess = nexus->se_sess;
 if (!se_sess)
  return -ENODEV;




 target_remove_session(se_sess);
 tport->ibmv_nexus = ((void*)0);
 kfree(nexus);

 return 0;
}
