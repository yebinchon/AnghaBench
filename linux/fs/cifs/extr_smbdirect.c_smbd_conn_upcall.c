
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbd_connection {int wait_send_queue; int wait_reassembly_queue; int disconn_wait; void* transport_status; int conn_wait; int ri_done; int ri_rc; } ;
struct rdma_cm_id {struct smbd_connection* context; } ;
struct rdma_cm_event {int event; int status; } ;


 int EHOSTUNREACH ;
 int ENETUNREACH ;
 int INFO ;
 void* SMBD_CONNECTED ;
 void* SMBD_DISCONNECTED ;
 void* SMBD_NEGOTIATE_FAILED ;
 int complete (int *) ;
 int log_rdma_event (int ,char*,int,...) ;
 int wake_up (int *) ;
 int wake_up_interruptible (int *) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static int smbd_conn_upcall(
  struct rdma_cm_id *id, struct rdma_cm_event *event)
{
 struct smbd_connection *info = id->context;

 log_rdma_event(INFO, "event=%d status=%d\n",
  event->event, event->status);

 switch (event->event) {
 case 136:
 case 129:
  info->ri_rc = 0;
  complete(&info->ri_done);
  break;

 case 137:
  info->ri_rc = -EHOSTUNREACH;
  complete(&info->ri_done);
  break;

 case 130:
  info->ri_rc = -ENETUNREACH;
  complete(&info->ri_done);
  break;

 case 132:
  log_rdma_event(INFO, "connected event=%d\n", event->event);
  info->transport_status = SMBD_CONNECTED;
  wake_up_interruptible(&info->conn_wait);
  break;

 case 135:
 case 128:
 case 131:
  log_rdma_event(INFO, "connecting failed event=%d\n", event->event);
  info->transport_status = SMBD_DISCONNECTED;
  wake_up_interruptible(&info->conn_wait);
  break;

 case 134:
 case 133:

  if (info->transport_status == SMBD_NEGOTIATE_FAILED) {
   info->transport_status = SMBD_DISCONNECTED;
   wake_up(&info->conn_wait);
   break;
  }

  info->transport_status = SMBD_DISCONNECTED;
  wake_up_interruptible(&info->disconn_wait);
  wake_up_interruptible(&info->wait_reassembly_queue);
  wake_up_interruptible_all(&info->wait_send_queue);
  break;

 default:
  break;
 }

 return 0;
}
