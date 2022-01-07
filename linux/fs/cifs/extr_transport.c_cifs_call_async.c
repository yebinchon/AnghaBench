
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rqst {int dummy; } ;
struct mid_q_entry {int credits; int qhead; int mid_state; int * handle; void* callback_data; int * callback; int * receive; } ;
struct cifs_credits {int value; unsigned int instance; } ;
struct TCP_Server_Info {unsigned int reconnect_instance; int sequence_number; int srv_mutex; int pending_mid_q; TYPE_1__* ops; } ;
typedef int mid_receive_t ;
typedef int mid_handle_t ;
typedef int mid_callback_t ;
struct TYPE_2__ {struct mid_q_entry* (* setup_async_request ) (struct TCP_Server_Info*,struct smb_rqst*) ;} ;


 int const CIFS_HAS_CREDITS ;
 int const CIFS_OP_MASK ;
 int EAGAIN ;
 int GlobalMid_Lock ;
 scalar_t__ IS_ERR (struct mid_q_entry*) ;
 int MID_REQUEST_SUBMITTED ;
 int PTR_ERR (struct mid_q_entry*) ;
 int add_credits_and_wake_if (struct TCP_Server_Info*,struct cifs_credits*,int) ;
 int cifs_delete_mid (struct mid_q_entry*) ;
 int cifs_in_send_dec (struct TCP_Server_Info*) ;
 int cifs_in_send_inc (struct TCP_Server_Info*) ;
 int cifs_save_when_sent (struct mid_q_entry*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int revert_current_mid (struct TCP_Server_Info*,int ) ;
 int smb_send_rqst (struct TCP_Server_Info*,int,struct smb_rqst*,int const) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct mid_q_entry* stub1 (struct TCP_Server_Info*,struct smb_rqst*) ;
 int wait_for_free_request (struct TCP_Server_Info*,int const,unsigned int*) ;

int
cifs_call_async(struct TCP_Server_Info *server, struct smb_rqst *rqst,
  mid_receive_t *receive, mid_callback_t *callback,
  mid_handle_t *handle, void *cbdata, const int flags,
  const struct cifs_credits *exist_credits)
{
 int rc;
 struct mid_q_entry *mid;
 struct cifs_credits credits = { .value = 0, .instance = 0 };
 unsigned int instance;
 int optype;

 optype = flags & CIFS_OP_MASK;

 if ((flags & CIFS_HAS_CREDITS) == 0) {
  rc = wait_for_free_request(server, flags, &instance);
  if (rc)
   return rc;
  credits.value = 1;
  credits.instance = instance;
 } else
  instance = exist_credits->instance;

 mutex_lock(&server->srv_mutex);






 if (instance != server->reconnect_instance) {
  mutex_unlock(&server->srv_mutex);
  add_credits_and_wake_if(server, &credits, optype);
  return -EAGAIN;
 }

 mid = server->ops->setup_async_request(server, rqst);
 if (IS_ERR(mid)) {
  mutex_unlock(&server->srv_mutex);
  add_credits_and_wake_if(server, &credits, optype);
  return PTR_ERR(mid);
 }

 mid->receive = receive;
 mid->callback = callback;
 mid->callback_data = cbdata;
 mid->handle = handle;
 mid->mid_state = MID_REQUEST_SUBMITTED;


 spin_lock(&GlobalMid_Lock);
 list_add_tail(&mid->qhead, &server->pending_mid_q);
 spin_unlock(&GlobalMid_Lock);





 cifs_save_when_sent(mid);
 cifs_in_send_inc(server);
 rc = smb_send_rqst(server, 1, rqst, flags);
 cifs_in_send_dec(server);

 if (rc < 0) {
  revert_current_mid(server, mid->credits);
  server->sequence_number -= 2;
  cifs_delete_mid(mid);
 }

 mutex_unlock(&server->srv_mutex);

 if (rc == 0)
  return 0;

 add_credits_and_wake_if(server, &credits, optype);
 return rc;
}
