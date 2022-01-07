
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_msg_ctx {int dummy; } ;
struct ecryptfs_message {int dummy; } ;


 int ENOMSG ;

__attribute__((used)) static inline int ecryptfs_wait_for_response(struct ecryptfs_msg_ctx *msg_ctx,
          struct ecryptfs_message **emsg)
{
 return -ENOMSG;
}
