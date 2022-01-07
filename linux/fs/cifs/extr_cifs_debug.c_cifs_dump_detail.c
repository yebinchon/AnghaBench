
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CifsError; } ;
struct smb_hdr {int Pid; int Mid; int Flags2; int Flags; TYPE_1__ Status; int Command; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
struct TYPE_4__ {int (* calc_smb_size ) (struct smb_hdr*,struct TCP_Server_Info*) ;} ;


 int VFS ;
 int cifs_dbg (int ,char*,struct smb_hdr*,int ,...) ;
 int stub1 (struct smb_hdr*,struct TCP_Server_Info*) ;

void cifs_dump_detail(void *buf, struct TCP_Server_Info *server)
{
}
