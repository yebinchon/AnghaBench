
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {scalar_t__ tcpStatus; } ;


 scalar_t__ CifsGood ;

__attribute__((used)) static bool
cifs_can_echo(struct TCP_Server_Info *server)
{
 if (server->tcpStatus == CifsGood)
  return 1;

 return 0;
}
