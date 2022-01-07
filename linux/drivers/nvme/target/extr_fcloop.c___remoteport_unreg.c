
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcloop_rport {int remoteport; } ;
struct fcloop_nport {int dummy; } ;


 int EALREADY ;
 int nvme_fc_unregister_remoteport (int ) ;

__attribute__((used)) static int
__remoteport_unreg(struct fcloop_nport *nport, struct fcloop_rport *rport)
{
 if (!rport)
  return -EALREADY;

 return nvme_fc_unregister_remoteport(rport->remoteport);
}
