
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {int credits; } ;



__attribute__((used)) static int *
cifs_get_credits_field(struct TCP_Server_Info *server, const int optype)
{
 return &server->credits;
}
