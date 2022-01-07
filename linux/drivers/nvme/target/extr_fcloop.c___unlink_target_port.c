
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fcloop_tport {int dummy; } ;
struct fcloop_nport {struct fcloop_tport* tport; TYPE_1__* rport; } ;
struct TYPE_2__ {int * targetport; } ;



__attribute__((used)) static struct fcloop_tport *
__unlink_target_port(struct fcloop_nport *nport)
{
 struct fcloop_tport *tport = nport->tport;

 if (tport && nport->rport)
  nport->rport->targetport = ((void*)0);
 nport->tport = ((void*)0);

 return tport;
}
