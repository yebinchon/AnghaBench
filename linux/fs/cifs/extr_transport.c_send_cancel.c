
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rqst {int dummy; } ;
struct mid_q_entry {int dummy; } ;
struct TCP_Server_Info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* send_cancel ) (struct TCP_Server_Info*,struct smb_rqst*,struct mid_q_entry*) ;} ;


 int stub1 (struct TCP_Server_Info*,struct smb_rqst*,struct mid_q_entry*) ;

__attribute__((used)) static inline int
send_cancel(struct TCP_Server_Info *server, struct smb_rqst *rqst,
     struct mid_q_entry *mid)
{
 return server->ops->send_cancel ?
    server->ops->send_cancel(server, rqst, mid) : 0;
}
