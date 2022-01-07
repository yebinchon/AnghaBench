
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TCP_Server_Info {int in_flight; int max_in_flight; unsigned int reconnect_instance; scalar_t__ tcpStatus; int req_lock; int hostname; int CurrentMid; int request_q; TYPE_1__* ops; } ;
struct TYPE_2__ {int* (* get_credits_field ) (struct TCP_Server_Info*,int) ;} ;


 int const CIFS_BLOCKING_OP ;
 int CIFS_ECHO_OP ;
 int const CIFS_NON_BLOCKING ;
 int const CIFS_OP_MASK ;
 int const CIFS_TIMEOUT_MASK ;
 scalar_t__ CifsExiting ;
 int EAGAIN ;
 int ENOENT ;
 int ENOTSUPP ;
 int ERESTARTSYS ;
 int MAX_COMPOUND ;
 long MAX_JIFFY_OFFSET ;
 int VFS ;
 int cifs_num_waiters_dec (struct TCP_Server_Info*) ;
 int cifs_num_waiters_inc (struct TCP_Server_Info*) ;
 int cifs_server_dbg (int ,char*,int const) ;
 int has_credits (struct TCP_Server_Info*,int*,int const) ;
 long msecs_to_jiffies (int const) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int* stub1 (struct TCP_Server_Info*,int) ;
 int trace_smb3_credit_timeout (int ,int ,int const) ;
 int wait_event_killable_timeout (int ,int ,long) ;

__attribute__((used)) static int
wait_for_free_credits(struct TCP_Server_Info *server, const int num_credits,
        const int timeout, const int flags,
        unsigned int *instance)
{
 int rc;
 int *credits;
 int optype;
 long int t;

 if (timeout < 0)
  t = MAX_JIFFY_OFFSET;
 else
  t = msecs_to_jiffies(timeout);

 optype = flags & CIFS_OP_MASK;

 *instance = 0;

 credits = server->ops->get_credits_field(server, optype);

 if (*credits <= 0 && optype == CIFS_ECHO_OP)
  return -EAGAIN;

 spin_lock(&server->req_lock);
 if ((flags & CIFS_TIMEOUT_MASK) == CIFS_NON_BLOCKING) {

  server->in_flight++;
  if (server->in_flight > server->max_in_flight)
   server->max_in_flight = server->in_flight;
  *credits -= 1;
  *instance = server->reconnect_instance;
  spin_unlock(&server->req_lock);
  return 0;
 }

 while (1) {
  if (*credits < num_credits) {
   spin_unlock(&server->req_lock);
   cifs_num_waiters_inc(server);
   rc = wait_event_killable_timeout(server->request_q,
    has_credits(server, credits, num_credits), t);
   cifs_num_waiters_dec(server);
   if (!rc) {
    trace_smb3_credit_timeout(server->CurrentMid,
     server->hostname, num_credits);
    cifs_server_dbg(VFS, "wait timed out after %d ms\n",
      timeout);
    return -ENOTSUPP;
   }
   if (rc == -ERESTARTSYS)
    return -ERESTARTSYS;
   spin_lock(&server->req_lock);
  } else {
   if (server->tcpStatus == CifsExiting) {
    spin_unlock(&server->req_lock);
    return -ENOENT;
   }
   if (!optype && num_credits == 1 &&
       server->in_flight > 2 * MAX_COMPOUND &&
       *credits <= MAX_COMPOUND) {
    spin_unlock(&server->req_lock);
    cifs_num_waiters_inc(server);
    rc = wait_event_killable_timeout(
     server->request_q,
     has_credits(server, credits,
          MAX_COMPOUND + 1),
     t);
    cifs_num_waiters_dec(server);
    if (!rc) {
     trace_smb3_credit_timeout(
      server->CurrentMid,
      server->hostname, num_credits);
     cifs_server_dbg(VFS, "wait timed out after %d ms\n",
       timeout);
     return -ENOTSUPP;
    }
    if (rc == -ERESTARTSYS)
     return -ERESTARTSYS;
    spin_lock(&server->req_lock);
    continue;
   }







   if ((flags & CIFS_TIMEOUT_MASK) != CIFS_BLOCKING_OP) {
    *credits -= num_credits;
    server->in_flight += num_credits;
    if (server->in_flight > server->max_in_flight)
     server->max_in_flight = server->in_flight;
    *instance = server->reconnect_instance;
   }
   spin_unlock(&server->req_lock);
   break;
  }
 }
 return 0;
}
