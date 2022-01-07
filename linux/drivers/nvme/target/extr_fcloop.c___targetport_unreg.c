
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcloop_tport {int targetport; } ;
struct fcloop_nport {int dummy; } ;


 int EALREADY ;
 int nvmet_fc_unregister_targetport (int ) ;

__attribute__((used)) static int
__targetport_unreg(struct fcloop_nport *nport, struct fcloop_tport *tport)
{
 if (!tport)
  return -EALREADY;

 return nvmet_fc_unregister_targetport(tport->targetport);
}
