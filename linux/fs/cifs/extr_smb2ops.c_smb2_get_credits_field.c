
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {int echo_credits; int oplock_credits; int credits; } ;





__attribute__((used)) static int *
smb2_get_credits_field(struct TCP_Server_Info *server, const int optype)
{
 switch (optype) {
 case 129:
  return &server->echo_credits;
 case 128:
  return &server->oplock_credits;
 default:
  return &server->credits;
 }
}
