
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcs_cmd {int dummy; } ;
struct TYPE_2__ {int state; int num_cmds; int cmds; } ;
struct rpmh_request {TYPE_1__ msg; int cmd; } ;
typedef enum rpmh_state { ____Placeholder_rpmh_state } rpmh_state ;


 int EINVAL ;
 int MAX_RPMH_PAYLOAD ;
 int memcpy (int ,struct tcs_cmd const*,int) ;

__attribute__((used)) static int __fill_rpmh_msg(struct rpmh_request *req, enum rpmh_state state,
  const struct tcs_cmd *cmd, u32 n)
{
 if (!cmd || !n || n > MAX_RPMH_PAYLOAD)
  return -EINVAL;

 memcpy(req->cmd, cmd, n * sizeof(*cmd));

 req->msg.state = state;
 req->msg.cmds = req->cmd;
 req->msg.num_cmds = n;

 return 0;
}
