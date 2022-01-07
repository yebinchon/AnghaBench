
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_credits {int value; scalar_t__ instance; } ;
struct TCP_Server_Info {scalar_t__ reconnect_instance; int request_q; int req_lock; int credits; } ;


 int DIV_ROUND_UP (unsigned int const,int ) ;
 int EAGAIN ;
 int ENOTSUPP ;
 int SMB2_MAX_BUFFER_SIZE ;
 int VFS ;
 int WARN_ONCE (int,char*,int,int) ;
 int cifs_server_dbg (int ,char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int
smb2_adjust_credits(struct TCP_Server_Info *server,
      struct cifs_credits *credits,
      const unsigned int payload_size)
{
 int new_val = DIV_ROUND_UP(payload_size, SMB2_MAX_BUFFER_SIZE);

 if (!credits->value || credits->value == new_val)
  return 0;

 if (credits->value < new_val) {
  WARN_ONCE(1, "request has less credits (%d) than required (%d)",
     credits->value, new_val);
  return -ENOTSUPP;
 }

 spin_lock(&server->req_lock);

 if (server->reconnect_instance != credits->instance) {
  spin_unlock(&server->req_lock);
  cifs_server_dbg(VFS, "trying to return %d credits to old session\n",
    credits->value - new_val);
  return -EAGAIN;
 }

 server->credits += credits->value - new_val;
 spin_unlock(&server->req_lock);
 wake_up(&server->request_q);
 credits->value = new_val;
 return 0;
}
