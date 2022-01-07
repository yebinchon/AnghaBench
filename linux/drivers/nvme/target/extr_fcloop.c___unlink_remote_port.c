
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fcloop_rport {int dummy; } ;
struct fcloop_nport {struct fcloop_rport* rport; TYPE_1__* tport; } ;
struct TYPE_2__ {int * remoteport; } ;



__attribute__((used)) static struct fcloop_rport *
__unlink_remote_port(struct fcloop_nport *nport)
{
 struct fcloop_rport *rport = nport->rport;

 if (rport && nport->tport)
  nport->tport->remoteport = ((void*)0);
 nport->rport = ((void*)0);

 return rport;
}
