
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb2_file_all_info {scalar_t__ EndOfFile; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_open_parms {int reconnect; struct cifs_fid* fid; int disposition; int create_options; int desired_access; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_io_parms {int volatile_fid; int persistent_fid; int length; scalar_t__ offset; struct cifs_tcon* tcon; int pid; int netfid; } ;
struct cifs_fid {int volatile_fid; int persistent_fid; int netfid; } ;
typedef int __u8 ;
typedef struct smb2_file_all_info __le16 ;
struct TYPE_2__ {int tgid; } ;


 int CIFS_MF_SYMLINK_FILE_SIZE ;
 int CIFS_NO_BUFFER ;
 int CREATE_NOT_DIR ;
 int CREATE_OPEN_BACKUP_INTENT ;
 int ENOENT ;
 int ENOMEM ;
 int FILE_OPEN ;
 int GENERIC_READ ;
 int GFP_KERNEL ;
 int PATH_MAX ;
 int SMB2_OPLOCK_LEVEL_NONE ;
 int SMB2_close (unsigned int,struct cifs_tcon*,int ,int ) ;
 int SMB2_open (unsigned int,struct cifs_open_parms*,struct smb2_file_all_info*,int *,struct smb2_file_all_info*,int *,int *) ;
 int SMB2_read (unsigned int,struct cifs_io_parms*,unsigned int*,char**,int*) ;
 scalar_t__ backup_cred (struct cifs_sb_info*) ;
 struct smb2_file_all_info* cifs_convert_path_to_utf16 (unsigned char const*,struct cifs_sb_info*) ;
 scalar_t__ cpu_to_le64 (int ) ;
 TYPE_1__* current ;
 int kfree (struct smb2_file_all_info*) ;
 struct smb2_file_all_info* kzalloc (int,int ) ;

int
smb3_query_mf_symlink(unsigned int xid, struct cifs_tcon *tcon,
        struct cifs_sb_info *cifs_sb, const unsigned char *path,
        char *pbuf, unsigned int *pbytes_read)
{
 int rc;
 struct cifs_fid fid;
 struct cifs_open_parms oparms;
 struct cifs_io_parms io_parms;
 int buf_type = CIFS_NO_BUFFER;
 __le16 *utf16_path;
 __u8 oplock = SMB2_OPLOCK_LEVEL_NONE;
 struct smb2_file_all_info *pfile_info = ((void*)0);

 oparms.tcon = tcon;
 oparms.cifs_sb = cifs_sb;
 oparms.desired_access = GENERIC_READ;
 oparms.create_options = CREATE_NOT_DIR;
 if (backup_cred(cifs_sb))
  oparms.create_options |= CREATE_OPEN_BACKUP_INTENT;
 oparms.disposition = FILE_OPEN;
 oparms.fid = &fid;
 oparms.reconnect = 0;

 utf16_path = cifs_convert_path_to_utf16(path, cifs_sb);
 if (utf16_path == ((void*)0))
  return -ENOMEM;

 pfile_info = kzalloc(sizeof(struct smb2_file_all_info) + PATH_MAX * 2,
        GFP_KERNEL);

 if (pfile_info == ((void*)0)) {
  kfree(utf16_path);
  return -ENOMEM;
 }

 rc = SMB2_open(xid, &oparms, utf16_path, &oplock, pfile_info, ((void*)0),
         ((void*)0));
 if (rc)
  goto qmf_out_open_fail;

 if (pfile_info->EndOfFile != cpu_to_le64(CIFS_MF_SYMLINK_FILE_SIZE)) {

  rc = -ENOENT;
  goto qmf_out;
 }

 io_parms.netfid = fid.netfid;
 io_parms.pid = current->tgid;
 io_parms.tcon = tcon;
 io_parms.offset = 0;
 io_parms.length = CIFS_MF_SYMLINK_FILE_SIZE;
 io_parms.persistent_fid = fid.persistent_fid;
 io_parms.volatile_fid = fid.volatile_fid;
 rc = SMB2_read(xid, &io_parms, pbytes_read, &pbuf, &buf_type);
qmf_out:
 SMB2_close(xid, tcon, fid.persistent_fid, fid.volatile_fid);
qmf_out_open_fail:
 kfree(utf16_path);
 kfree(pfile_info);
 return rc;
}
