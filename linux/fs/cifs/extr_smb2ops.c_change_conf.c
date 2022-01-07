
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {int credits; int echo_credits; int oplock_credits; int echoes; int oplocks; } ;


 int enable_oplocks ;

__attribute__((used)) static int
change_conf(struct TCP_Server_Info *server)
{
 server->credits += server->echo_credits + server->oplock_credits;
 server->oplock_credits = server->echo_credits = 0;
 switch (server->credits) {
 case 0:
  return 0;
 case 1:
  server->echoes = 0;
  server->oplocks = 0;
  break;
 case 2:
  server->echoes = 1;
  server->oplocks = 0;
  server->echo_credits = 1;
  break;
 default:
  server->echoes = 1;
  if (enable_oplocks) {
   server->oplocks = 1;
   server->oplock_credits = 1;
  } else
   server->oplocks = 0;

  server->echo_credits = 1;
 }
 server->credits -= server->echo_credits + server->oplock_credits;
 return server->credits + server->echo_credits + server->oplock_credits;
}
