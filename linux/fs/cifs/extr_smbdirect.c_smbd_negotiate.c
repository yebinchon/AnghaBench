
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lkey; int length; int addr; } ;
struct smbd_response {TYPE_1__ sge; int type; } ;
struct smbd_connection {int negotiate_done; int negotiate_completion; } ;


 int EINTR ;
 int ENOTCONN ;
 int ERESTARTSYS ;
 int ETIMEDOUT ;
 int HZ ;
 int INFO ;
 int SMBD_NEGOTIATE_RESP ;
 int SMBD_NEGOTIATE_TIMEOUT ;
 struct smbd_response* get_receive_buffer (struct smbd_connection*) ;
 int init_completion (int *) ;
 int log_rdma_event (int ,char*,int,...) ;
 int smbd_post_recv (struct smbd_connection*,struct smbd_response*) ;
 int smbd_post_send_negotiate_req (struct smbd_connection*) ;
 int wait_for_completion_interruptible_timeout (int *,int) ;

__attribute__((used)) static int smbd_negotiate(struct smbd_connection *info)
{
 int rc;
 struct smbd_response *response = get_receive_buffer(info);

 response->type = SMBD_NEGOTIATE_RESP;
 rc = smbd_post_recv(info, response);
 log_rdma_event(INFO,
  "smbd_post_recv rc=%d iov.addr=%llx iov.length=%x "
  "iov.lkey=%x\n",
  rc, response->sge.addr,
  response->sge.length, response->sge.lkey);
 if (rc)
  return rc;

 init_completion(&info->negotiate_completion);
 info->negotiate_done = 0;
 rc = smbd_post_send_negotiate_req(info);
 if (rc)
  return rc;

 rc = wait_for_completion_interruptible_timeout(
  &info->negotiate_completion, SMBD_NEGOTIATE_TIMEOUT * HZ);
 log_rdma_event(INFO, "wait_for_completion_timeout rc=%d\n", rc);

 if (info->negotiate_done)
  return 0;

 if (rc == 0)
  rc = -ETIMEDOUT;
 else if (rc == -ERESTARTSYS)
  rc = -EINTR;
 else
  rc = -ENOTCONN;

 return rc;
}
