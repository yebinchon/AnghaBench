
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {scalar_t__ maxBuf; } ;



__attribute__((used)) static bool
cifs_need_neg(struct TCP_Server_Info *server)
{
 return server->maxBuf == 0;
}
