
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb2_sync_hdr {int ProcessId; int MessageId; int Flags; int Status; int Command; } ;
struct TCP_Server_Info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* calc_smb_size ) (void*,struct TCP_Server_Info*) ;} ;


 int VFS ;
 int cifs_server_dbg (int ,char*,void*,int ,...) ;
 int stub1 (void*,struct TCP_Server_Info*) ;

__attribute__((used)) static void
smb2_dump_detail(void *buf, struct TCP_Server_Info *server)
{
}
