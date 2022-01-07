
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_search_info {int index_of_last_entry; scalar_t__ entries_in_buffer; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_open_parms {int desired_access; int reconnect; struct cifs_fid* fid; scalar_t__ create_options; int disposition; struct cifs_tcon* tcon; } ;
struct cifs_fid {int volatile_fid; int persistent_fid; } ;
typedef int __u8 ;
typedef int __u16 ;
typedef int __le16 ;


 scalar_t__ CREATE_OPEN_BACKUP_INTENT ;
 int ENOMEM ;
 int FILE_OPEN ;
 int FILE_READ_ATTRIBUTES ;
 int FILE_READ_DATA ;
 int FYI ;
 int SMB2_OPLOCK_LEVEL_NONE ;
 int SMB2_close (unsigned int const,struct cifs_tcon*,int ,int ) ;
 int SMB2_open (unsigned int const,struct cifs_open_parms*,int *,int *,int *,int *,int *) ;
 int SMB2_query_directory (unsigned int const,struct cifs_tcon*,int ,int ,int ,struct cifs_search_info*) ;
 scalar_t__ backup_cred (struct cifs_sb_info*) ;
 int * cifs_convert_path_to_utf16 (char const*,struct cifs_sb_info*) ;
 int cifs_dbg (int ,char*,int) ;
 int kfree (int *) ;

__attribute__((used)) static int
smb2_query_dir_first(const unsigned int xid, struct cifs_tcon *tcon,
       const char *path, struct cifs_sb_info *cifs_sb,
       struct cifs_fid *fid, __u16 search_flags,
       struct cifs_search_info *srch_inf)
{
 __le16 *utf16_path;
 int rc;
 __u8 oplock = SMB2_OPLOCK_LEVEL_NONE;
 struct cifs_open_parms oparms;

 utf16_path = cifs_convert_path_to_utf16(path, cifs_sb);
 if (!utf16_path)
  return -ENOMEM;

 oparms.tcon = tcon;
 oparms.desired_access = FILE_READ_ATTRIBUTES | FILE_READ_DATA;
 oparms.disposition = FILE_OPEN;
 if (backup_cred(cifs_sb))
  oparms.create_options = CREATE_OPEN_BACKUP_INTENT;
 else
  oparms.create_options = 0;
 oparms.fid = fid;
 oparms.reconnect = 0;

 rc = SMB2_open(xid, &oparms, utf16_path, &oplock, ((void*)0), ((void*)0), ((void*)0));
 kfree(utf16_path);
 if (rc) {
  cifs_dbg(FYI, "open dir failed rc=%d\n", rc);
  return rc;
 }

 srch_inf->entries_in_buffer = 0;
 srch_inf->index_of_last_entry = 2;

 rc = SMB2_query_directory(xid, tcon, fid->persistent_fid,
      fid->volatile_fid, 0, srch_inf);
 if (rc) {
  cifs_dbg(FYI, "query directory failed rc=%d\n", rc);
  SMB2_close(xid, tcon, fid->persistent_fid, fid->volatile_fid);
 }
 return rc;
}
