
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_fclose; } ;
struct TYPE_6__ {TYPE_1__ cifs_stats; } ;
struct cifs_tcon {TYPE_2__ stats; int ses; } ;
typedef int __u16 ;
struct TYPE_7__ {scalar_t__ ByteCount; int FileID; } ;
typedef TYPE_3__ FINDCLOSE_REQ ;


 int EAGAIN ;
 int FYI ;
 int SMB_COM_FIND_CLOSE2 ;
 int SendReceiveNoRsp (unsigned int const,int ,char*,int ) ;
 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_small_buf_release (TYPE_3__*) ;
 int cifs_stats_inc (int *) ;
 int small_smb_init (int ,int,struct cifs_tcon*,void**) ;

int
CIFSFindClose(const unsigned int xid, struct cifs_tcon *tcon,
       const __u16 searchHandle)
{
 int rc = 0;
 FINDCLOSE_REQ *pSMB = ((void*)0);

 cifs_dbg(FYI, "In CIFSSMBFindClose\n");
 rc = small_smb_init(SMB_COM_FIND_CLOSE2, 1, tcon, (void **)&pSMB);



 if (rc == -EAGAIN)
  return 0;
 if (rc)
  return rc;

 pSMB->FileID = searchHandle;
 pSMB->ByteCount = 0;
 rc = SendReceiveNoRsp(xid, tcon->ses, (char *) pSMB, 0);
 cifs_small_buf_release(pSMB);
 if (rc)
  cifs_dbg(VFS, "Send error in FindClose = %d\n", rc);

 cifs_stats_inc(&tcon->stats.cifs_stats.num_fclose);


 if (rc == -EAGAIN)
  rc = 0;

 return rc;
}
