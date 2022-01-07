
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_endpoint {struct bnx2i_endpoint* dd_data; } ;
struct bnx2i_endpoint {scalar_t__ state; int ofld_wait; } ;


 scalar_t__ EP_STATE_CONNECT_COMPL ;
 scalar_t__ EP_STATE_CONNECT_FAILED ;
 scalar_t__ EP_STATE_IDLE ;
 scalar_t__ EP_STATE_OFLD_FAILED ;
 int msecs_to_jiffies (int) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int bnx2i_ep_poll(struct iscsi_endpoint *ep, int timeout_ms)
{
 struct bnx2i_endpoint *bnx2i_ep;
 int rc = 0;

 bnx2i_ep = ep->dd_data;
 if ((bnx2i_ep->state == EP_STATE_IDLE) ||
     (bnx2i_ep->state == EP_STATE_CONNECT_FAILED) ||
     (bnx2i_ep->state == EP_STATE_OFLD_FAILED))
  return -1;
 if (bnx2i_ep->state == EP_STATE_CONNECT_COMPL)
  return 1;

 rc = wait_event_interruptible_timeout(bnx2i_ep->ofld_wait,
           ((bnx2i_ep->state ==
      EP_STATE_OFLD_FAILED) ||
            (bnx2i_ep->state ==
      EP_STATE_CONNECT_FAILED) ||
            (bnx2i_ep->state ==
      EP_STATE_CONNECT_COMPL)),
           msecs_to_jiffies(timeout_ms));
 if (bnx2i_ep->state == EP_STATE_OFLD_FAILED)
  rc = -1;

 if (rc > 0)
  return 1;
 else if (!rc)
  return 0;
 else
  return rc;
}
