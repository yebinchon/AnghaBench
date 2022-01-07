
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_msg_ctx {int dummy; } ;


 int ECRYPTFS_MSG_REQUEST ;
 int ecryptfs_daemon_hash_mux ;
 int ecryptfs_send_message_locked (char*,int,int ,struct ecryptfs_msg_ctx**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ecryptfs_send_message(char *data, int data_len,
     struct ecryptfs_msg_ctx **msg_ctx)
{
 int rc;

 mutex_lock(&ecryptfs_daemon_hash_mux);
 rc = ecryptfs_send_message_locked(data, data_len, ECRYPTFS_MSG_REQUEST,
       msg_ctx);
 mutex_unlock(&ecryptfs_daemon_hash_mux);
 return rc;
}
