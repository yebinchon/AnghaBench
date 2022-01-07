
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_vol {scalar_t__ sign; int sectype; } ;
struct TCP_Server_Info {int sign; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* select_sectype ) (struct TCP_Server_Info*,int ) ;} ;


 scalar_t__ Unspecified ;
 scalar_t__ stub1 (struct TCP_Server_Info*,int ) ;

__attribute__((used)) static bool
match_security(struct TCP_Server_Info *server, struct smb_vol *vol)
{





 if (server->ops->select_sectype(server, vol->sectype)
      == Unspecified)
  return 0;






 if (vol->sign && !server->sign)
  return 0;

 return 1;
}
