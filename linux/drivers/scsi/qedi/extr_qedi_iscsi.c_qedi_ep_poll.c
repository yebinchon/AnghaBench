
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_endpoint {scalar_t__ state; int ofld_wait; } ;
struct iscsi_endpoint {struct qedi_endpoint* dd_data; } ;


 scalar_t__ EP_STATE_IDLE ;
 scalar_t__ EP_STATE_OFLDCONN_COMPL ;
 scalar_t__ EP_STATE_OFLDCONN_FAILED ;
 scalar_t__ EP_STATE_OFLDCONN_NONE ;
 int QEDI_OFLD_WAIT_STATE (struct qedi_endpoint*) ;
 int msecs_to_jiffies (int) ;
 scalar_t__ qedi_do_not_recover ;
 int wait_event_interruptible_timeout (int ,int ,int ) ;

__attribute__((used)) static int qedi_ep_poll(struct iscsi_endpoint *ep, int timeout_ms)
{
 struct qedi_endpoint *qedi_ep;
 int ret = 0;

 if (qedi_do_not_recover)
  return 1;

 qedi_ep = ep->dd_data;
 if (qedi_ep->state == EP_STATE_IDLE ||
     qedi_ep->state == EP_STATE_OFLDCONN_NONE ||
     qedi_ep->state == EP_STATE_OFLDCONN_FAILED)
  return -1;

 if (qedi_ep->state == EP_STATE_OFLDCONN_COMPL)
  ret = 1;

 ret = wait_event_interruptible_timeout(qedi_ep->ofld_wait,
            QEDI_OFLD_WAIT_STATE(qedi_ep),
            msecs_to_jiffies(timeout_ms));

 if (qedi_ep->state == EP_STATE_OFLDCONN_FAILED)
  ret = -1;

 if (ret > 0)
  return 1;
 else if (!ret)
  return 0;
 else
  return ret;
}
