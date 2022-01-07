
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcloop_lport {int unreg_done; int localport; } ;


 int init_completion (int *) ;
 int kfree (struct fcloop_lport*) ;
 int nvme_fc_unregister_localport (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int
__wait_localport_unreg(struct fcloop_lport *lport)
{
 int ret;

 init_completion(&lport->unreg_done);

 ret = nvme_fc_unregister_localport(lport->localport);

 wait_for_completion(&lport->unreg_done);

 kfree(lport);

 return ret;
}
