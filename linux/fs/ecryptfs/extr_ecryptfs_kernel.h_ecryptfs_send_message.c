
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_msg_ctx {int dummy; } ;


 int ENOTCONN ;

__attribute__((used)) static inline int ecryptfs_send_message(char *data, int data_len,
     struct ecryptfs_msg_ctx **msg_ctx)
{
 return -ENOTCONN;
}
