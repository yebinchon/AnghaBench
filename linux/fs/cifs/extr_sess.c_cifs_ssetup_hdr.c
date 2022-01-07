
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct cifs_ses {int capabilities; TYPE_1__* server; } ;
typedef int __u32 ;
struct TYPE_7__ {int Flags2; } ;
struct TYPE_8__ {int AndXCommand; TYPE_2__ hdr; void* VcNumber; void* MaxMpxCount; void* MaxBufferSize; } ;
struct TYPE_9__ {TYPE_3__ req; } ;
struct TYPE_6__ {int maxReq; scalar_t__ sign; } ;
typedef TYPE_4__ SESSION_SETUP_ANDX ;


 int CAP_DFS ;
 int CAP_LARGE_FILES ;
 int CAP_LARGE_READ_X ;
 int CAP_LARGE_WRITE_X ;
 int CAP_LEVEL_II_OPLOCKS ;
 int CAP_NT_SMBS ;
 int CAP_STATUS32 ;
 int CAP_UNICODE ;
 int CAP_UNIX ;
 scalar_t__ CIFSMaxBufSize ;
 scalar_t__ MAX_CIFS_HDR_SIZE ;
 int SMBFLG2_DFS ;
 int SMBFLG2_ERR_STATUS ;
 int SMBFLG2_SECURITY_SIGNATURE ;
 int SMBFLG2_UNICODE ;
 int USHRT_MAX ;
 void* cpu_to_le16 (int) ;
 int min_t (int ,scalar_t__,int ) ;
 int u32 ;

__attribute__((used)) static __u32 cifs_ssetup_hdr(struct cifs_ses *ses, SESSION_SETUP_ANDX *pSMB)
{
 __u32 capabilities = 0;






 pSMB->req.AndXCommand = 0xFF;
 pSMB->req.MaxBufferSize = cpu_to_le16(min_t(u32,
     CIFSMaxBufSize + MAX_CIFS_HDR_SIZE - 4,
     USHRT_MAX));
 pSMB->req.MaxMpxCount = cpu_to_le16(ses->server->maxReq);
 pSMB->req.VcNumber = cpu_to_le16(1);






 capabilities = CAP_LARGE_FILES | CAP_NT_SMBS | CAP_LEVEL_II_OPLOCKS |
   CAP_LARGE_WRITE_X | CAP_LARGE_READ_X;

 if (ses->server->sign)
  pSMB->req.hdr.Flags2 |= SMBFLG2_SECURITY_SIGNATURE;

 if (ses->capabilities & CAP_UNICODE) {
  pSMB->req.hdr.Flags2 |= SMBFLG2_UNICODE;
  capabilities |= CAP_UNICODE;
 }
 if (ses->capabilities & CAP_STATUS32) {
  pSMB->req.hdr.Flags2 |= SMBFLG2_ERR_STATUS;
  capabilities |= CAP_STATUS32;
 }
 if (ses->capabilities & CAP_DFS) {
  pSMB->req.hdr.Flags2 |= SMBFLG2_DFS;
  capabilities |= CAP_DFS;
 }
 if (ses->capabilities & CAP_UNIX)
  capabilities |= CAP_UNIX;

 return capabilities;
}
