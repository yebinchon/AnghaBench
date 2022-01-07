
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct cifs_tcon {int broken_sparse_sup; } ;
struct cifsInodeInfo {int cifsAttrs; } ;
struct TYPE_2__ {int volatile_fid; int persistent_fid; } ;
struct cifsFileInfo {TYPE_1__ fid; } ;
typedef scalar_t__ __u8 ;


 int CIFSMaxBufSize ;
 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 int FILE_ATTRIBUTE_SPARSE_FILE ;
 int FSCTL_SET_SPARSE ;
 int FYI ;
 int SMB2_ioctl (unsigned int const,struct cifs_tcon*,int ,int ,int ,int,scalar_t__*,int,int ,int *,int *) ;
 int cifs_dbg (int ,char*,int) ;

__attribute__((used)) static bool smb2_set_sparse(const unsigned int xid, struct cifs_tcon *tcon,
  struct cifsFileInfo *cfile, struct inode *inode, __u8 setsparse)
{
 struct cifsInodeInfo *cifsi;
 int rc;

 cifsi = CIFS_I(inode);


 if ((cifsi->cifsAttrs & FILE_ATTRIBUTE_SPARSE_FILE) && setsparse)
  return 1;

 if (!(cifsi->cifsAttrs & FILE_ATTRIBUTE_SPARSE_FILE) && !setsparse)
  return 1;
 if (tcon->broken_sparse_sup)
  return 0;

 rc = SMB2_ioctl(xid, tcon, cfile->fid.persistent_fid,
   cfile->fid.volatile_fid, FSCTL_SET_SPARSE,
   1 ,
   &setsparse, 1, CIFSMaxBufSize, ((void*)0), ((void*)0));
 if (rc) {
  tcon->broken_sparse_sup = 1;
  cifs_dbg(FYI, "set sparse rc = %d\n", rc);
  return 0;
 }

 if (setsparse)
  cifsi->cifsAttrs |= FILE_ATTRIBUTE_SPARSE_FILE;
 else
  cifsi->cifsAttrs &= (~FILE_ATTRIBUTE_SPARSE_FILE);

 return 1;
}
