
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_flushes; } ;
struct TYPE_6__ {TYPE_1__ cifs_stats; } ;
struct cifs_tcon {TYPE_2__ stats; int ses; } ;
typedef scalar_t__ __u16 ;
struct TYPE_7__ {scalar_t__ ByteCount; scalar_t__ FileID; } ;
typedef TYPE_3__ FLUSH_REQ ;


 int FYI ;
 int SMB_COM_FLUSH ;
 int SendReceiveNoRsp (unsigned int const,int ,char*,int ) ;
 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_small_buf_release (TYPE_3__*) ;
 int cifs_stats_inc (int *) ;
 int small_smb_init (int ,int,struct cifs_tcon*,void**) ;

int
CIFSSMBFlush(const unsigned int xid, struct cifs_tcon *tcon, int smb_file_id)
{
 int rc = 0;
 FLUSH_REQ *pSMB = ((void*)0);
 cifs_dbg(FYI, "In CIFSSMBFlush\n");

 rc = small_smb_init(SMB_COM_FLUSH, 1, tcon, (void **) &pSMB);
 if (rc)
  return rc;

 pSMB->FileID = (__u16) smb_file_id;
 pSMB->ByteCount = 0;
 rc = SendReceiveNoRsp(xid, tcon->ses, (char *) pSMB, 0);
 cifs_small_buf_release(pSMB);
 cifs_stats_inc(&tcon->stats.cifs_stats.num_flushes);
 if (rc)
  cifs_dbg(VFS, "Send error in Flush = %d\n", rc);

 return rc;
}
