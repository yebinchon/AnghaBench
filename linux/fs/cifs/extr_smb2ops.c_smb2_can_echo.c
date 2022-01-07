
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {int echoes; } ;



__attribute__((used)) static bool
smb2_can_echo(struct TCP_Server_Info *server)
{
 return server->echoes;
}
