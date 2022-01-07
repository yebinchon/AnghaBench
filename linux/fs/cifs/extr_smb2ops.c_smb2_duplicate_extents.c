
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct duplicate_extents_to_file {void* ByteCount; void* TargetFileOffset; void* SourceFileOffset; int PersistentFileHandle; int VolatileFileHandle; } ;
struct TYPE_3__ {int Attributes; } ;
struct cifs_tcon {TYPE_1__ fsAttrInfo; } ;
struct TYPE_4__ {int volatile_fid; int persistent_fid; } ;
struct cifsFileInfo {TYPE_2__ fid; int tlink; } ;


 int CIFSMaxBufSize ;
 int EOPNOTSUPP ;
 int FILE_SUPPORTS_BLOCK_REFCOUNTING ;
 int FSCTL_DUPLICATE_EXTENTS_TO_FILE ;
 int FYI ;
 int SMB2_ioctl (unsigned int const,struct cifs_tcon*,int ,int ,int ,int,char*,int,int ,int *,unsigned int*) ;
 int cifs_dbg (int ,char*,...) ;
 void* cpu_to_le64 (scalar_t__) ;
 int le32_to_cpu (int ) ;
 int smb2_set_file_size (unsigned int const,struct cifs_tcon*,struct cifsFileInfo*,scalar_t__,int) ;
 struct cifs_tcon* tlink_tcon (int ) ;

__attribute__((used)) static int
smb2_duplicate_extents(const unsigned int xid,
   struct cifsFileInfo *srcfile,
   struct cifsFileInfo *trgtfile, u64 src_off,
   u64 len, u64 dest_off)
{
 int rc;
 unsigned int ret_data_len;
 struct duplicate_extents_to_file dup_ext_buf;
 struct cifs_tcon *tcon = tlink_tcon(trgtfile->tlink);


 if ((le32_to_cpu(tcon->fsAttrInfo.Attributes) &
      FILE_SUPPORTS_BLOCK_REFCOUNTING) == 0)
  return -EOPNOTSUPP;

 dup_ext_buf.VolatileFileHandle = srcfile->fid.volatile_fid;
 dup_ext_buf.PersistentFileHandle = srcfile->fid.persistent_fid;
 dup_ext_buf.SourceFileOffset = cpu_to_le64(src_off);
 dup_ext_buf.TargetFileOffset = cpu_to_le64(dest_off);
 dup_ext_buf.ByteCount = cpu_to_le64(len);
 cifs_dbg(FYI, "Duplicate extents: src off %lld dst off %lld len %lld\n",
  src_off, dest_off, len);

 rc = smb2_set_file_size(xid, tcon, trgtfile, dest_off + len, 0);
 if (rc)
  goto duplicate_extents_out;

 rc = SMB2_ioctl(xid, tcon, trgtfile->fid.persistent_fid,
   trgtfile->fid.volatile_fid,
   FSCTL_DUPLICATE_EXTENTS_TO_FILE,
   1 ,
   (char *)&dup_ext_buf,
   sizeof(struct duplicate_extents_to_file),
   CIFSMaxBufSize, ((void*)0),
   &ret_data_len);

 if (ret_data_len > 0)
  cifs_dbg(FYI, "Non-zero response length in duplicate extents\n");

duplicate_extents_out:
 return rc;
}
