
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ec_cmd_t {scalar_t__ cmd; int bytes_returned; } ;


 int EINVAL ;
 struct ec_cmd_t* olpc_xo175_ec_cmds ;

__attribute__((used)) static int olpc_xo175_ec_resp_len(u8 cmd)
{
 const struct ec_cmd_t *p;

 for (p = olpc_xo175_ec_cmds; p->cmd; p++) {
  if (p->cmd == cmd)
   return p->bytes_returned;
 }

 return -EINVAL;
}
