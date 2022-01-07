
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smb_hdr {int* Protocol; char Command; int Flags; char WordCount; int Flags2; int Mid; int Uid; int Tid; void* PidHigh; void* Pid; int smb_buf_length; } ;
struct cifs_tcon {int Flags; TYPE_1__* ses; scalar_t__ nocase; int tid; } ;
typedef int __u16 ;
struct TYPE_6__ {int tgid; } ;
struct TYPE_5__ {scalar_t__ sign; } ;
struct TYPE_4__ {int capabilities; TYPE_2__* server; int Suid; } ;


 int CAP_STATUS32 ;
 int CAP_UNICODE ;
 int SMBFLG2_DFS ;
 int SMBFLG2_ERR_STATUS ;
 int SMBFLG2_KNOWS_LONG_NAMES ;
 int SMBFLG2_SECURITY_SIGNATURE ;
 int SMBFLG2_UNICODE ;
 int SMBFLG_CASELESS ;
 int SMB_SHARE_IS_IN_DFS ;
 int cpu_to_be32 (int) ;
 void* cpu_to_le16 (int ) ;
 TYPE_3__* current ;
 int get_next_mid (TYPE_2__*) ;
 int memset (char*,int ,int) ;

void
header_assemble(struct smb_hdr *buffer, char smb_command ,
  const struct cifs_tcon *treeCon, int word_count
                                                               )
{
 char *temp = (char *) buffer;

 memset(temp, 0, 256);

 buffer->smb_buf_length = cpu_to_be32(
     (2 * word_count) + sizeof(struct smb_hdr) -
     4 +
     2 ) ;

 buffer->Protocol[0] = 0xFF;
 buffer->Protocol[1] = 'S';
 buffer->Protocol[2] = 'M';
 buffer->Protocol[3] = 'B';
 buffer->Command = smb_command;
 buffer->Flags = 0x00;
 buffer->Flags2 = SMBFLG2_KNOWS_LONG_NAMES;
 buffer->Pid = cpu_to_le16((__u16)current->tgid);
 buffer->PidHigh = cpu_to_le16((__u16)(current->tgid >> 16));
 if (treeCon) {
  buffer->Tid = treeCon->tid;
  if (treeCon->ses) {
   if (treeCon->ses->capabilities & CAP_UNICODE)
    buffer->Flags2 |= SMBFLG2_UNICODE;
   if (treeCon->ses->capabilities & CAP_STATUS32)
    buffer->Flags2 |= SMBFLG2_ERR_STATUS;


   buffer->Uid = treeCon->ses->Suid;
   buffer->Mid = get_next_mid(treeCon->ses->server);
  }
  if (treeCon->Flags & SMB_SHARE_IS_IN_DFS)
   buffer->Flags2 |= SMBFLG2_DFS;
  if (treeCon->nocase)
   buffer->Flags |= SMBFLG_CASELESS;
  if ((treeCon->ses) && (treeCon->ses->server))
   if (treeCon->ses->server->sign)
    buffer->Flags2 |= SMBFLG2_SECURITY_SIGNATURE;
 }


 buffer->WordCount = (char) word_count;
 return;
}
