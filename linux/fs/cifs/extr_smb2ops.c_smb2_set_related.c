
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rqst {TYPE_1__* rq_iov; } ;
struct smb2_sync_hdr {int Flags; } ;
struct TYPE_2__ {scalar_t__ iov_base; } ;


 int FYI ;
 int SMB2_FLAGS_RELATED_OPERATIONS ;
 int cifs_dbg (int ,char*) ;

void
smb2_set_related(struct smb_rqst *rqst)
{
 struct smb2_sync_hdr *shdr;

 shdr = (struct smb2_sync_hdr *)(rqst->rq_iov[0].iov_base);
 if (shdr == ((void*)0)) {
  cifs_dbg(FYI, "shdr NULL in smb2_set_related\n");
  return;
 }
 shdr->Flags |= SMB2_FLAGS_RELATED_OPERATIONS;
}
