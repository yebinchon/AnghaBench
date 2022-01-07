
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport {scalar_t__ port_state; int flags; } ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int BLK_STS_RESOURCE ;
 scalar_t__ FC_PORTSTATE_BLOCKED ;
 scalar_t__ FC_PORTSTATE_ONLINE ;
 int FC_RPORT_FAST_FAIL_TIMEDOUT ;

__attribute__((used)) static blk_status_t fc_bsg_rport_prep(struct fc_rport *rport)
{
 if (rport->port_state == FC_PORTSTATE_BLOCKED &&
     !(rport->flags & FC_RPORT_FAST_FAIL_TIMEDOUT))
  return BLK_STS_RESOURCE;

 if (rport->port_state != FC_PORTSTATE_ONLINE)
  return BLK_STS_IOERR;

 return BLK_STS_OK;
}
