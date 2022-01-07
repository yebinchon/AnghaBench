
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {scalar_t__ max_read; } ;



__attribute__((used)) static bool
smb2_need_neg(struct TCP_Server_Info *server)
{
 return server->max_read == 0;
}
