
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_endpoint {struct bnx2i_endpoint* dd_data; } ;
struct iscsi_conn {int dummy; } ;
struct bnx2i_hba {scalar_t__ age; int eh_wait; int net_dev_lock; int adapter_state; } ;
struct bnx2i_endpoint {scalar_t__ state; scalar_t__ hba_age; struct bnx2i_hba* hba; struct bnx2i_conn* conn; scalar_t__ timestamp; } ;
struct bnx2i_conn {int * ep; TYPE_1__* cls_conn; } ;
struct TYPE_2__ {struct iscsi_conn* dd_data; } ;


 int ADAPTER_STATE_UP ;
 scalar_t__ EP_STATE_CONNECT_START ;
 scalar_t__ EP_STATE_DISCONN_TIMEDOUT ;
 scalar_t__ EP_STATE_IDLE ;
 int HZ ;
 int bnx2i_ep_active_list_del (struct bnx2i_hba*,struct bnx2i_endpoint*) ;
 int bnx2i_free_ep (struct iscsi_endpoint*) ;
 int bnx2i_free_qp_resc (struct bnx2i_hba*,struct bnx2i_endpoint*) ;
 scalar_t__ bnx2i_hw_ep_disconnect (struct bnx2i_endpoint*) ;
 int iscsi_suspend_queue (struct iscsi_conn*) ;
 int jiffies ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;
 int time_after (int ,scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void bnx2i_ep_disconnect(struct iscsi_endpoint *ep)
{
 struct bnx2i_endpoint *bnx2i_ep;
 struct bnx2i_conn *bnx2i_conn = ((void*)0);
 struct iscsi_conn *conn = ((void*)0);
 struct bnx2i_hba *hba;

 bnx2i_ep = ep->dd_data;





 while ((bnx2i_ep->state == EP_STATE_CONNECT_START) &&
  !time_after(jiffies, bnx2i_ep->timestamp + (12 * HZ)))
  msleep(250);

 if (bnx2i_ep->conn) {
  bnx2i_conn = bnx2i_ep->conn;
  conn = bnx2i_conn->cls_conn->dd_data;
  iscsi_suspend_queue(conn);
 }
 hba = bnx2i_ep->hba;

 mutex_lock(&hba->net_dev_lock);

 if (bnx2i_ep->state == EP_STATE_DISCONN_TIMEDOUT)
  goto out;

 if (bnx2i_ep->state == EP_STATE_IDLE)
  goto free_resc;

 if (!test_bit(ADAPTER_STATE_UP, &hba->adapter_state) ||
     (bnx2i_ep->hba_age != hba->age)) {
  bnx2i_ep_active_list_del(hba, bnx2i_ep);
  goto free_resc;
 }


 if (bnx2i_hw_ep_disconnect(bnx2i_ep)) {
  mutex_unlock(&hba->net_dev_lock);
  return;
 }
free_resc:
 bnx2i_free_qp_resc(hba, bnx2i_ep);

 if (bnx2i_conn)
  bnx2i_conn->ep = ((void*)0);

 bnx2i_free_ep(ep);
out:
 mutex_unlock(&hba->net_dev_lock);

 wake_up_interruptible(&hba->eh_wait);
}
