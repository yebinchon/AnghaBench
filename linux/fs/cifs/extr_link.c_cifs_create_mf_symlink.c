
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_open_parms {int create_options; unsigned char const* path; int reconnect; struct cifs_fid* fid; int disposition; int desired_access; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_io_parms {int length; scalar_t__ offset; struct cifs_tcon* tcon; int pid; int netfid; } ;
struct cifs_fid {int netfid; } ;
struct TYPE_2__ {int tgid; } ;


 int CIFSSMBClose (unsigned int,struct cifs_tcon*,int ) ;
 int CIFSSMBWrite (unsigned int,struct cifs_io_parms*,unsigned int*,char*) ;
 int CIFS_MF_SYMLINK_FILE_SIZE ;
 int CIFS_open (unsigned int,struct cifs_open_parms*,int*,int *) ;
 int CREATE_NOT_DIR ;
 int CREATE_OPEN_BACKUP_INTENT ;
 int FILE_CREATE ;
 int GENERIC_WRITE ;
 scalar_t__ backup_cred (struct cifs_sb_info*) ;
 TYPE_1__* current ;

int
cifs_create_mf_symlink(unsigned int xid, struct cifs_tcon *tcon,
         struct cifs_sb_info *cifs_sb, const unsigned char *path,
         char *pbuf, unsigned int *pbytes_written)
{
 int rc;
 int oplock = 0;
 struct cifs_fid fid;
 struct cifs_open_parms oparms;
 struct cifs_io_parms io_parms;
 int create_options = CREATE_NOT_DIR;

 if (backup_cred(cifs_sb))
  create_options |= CREATE_OPEN_BACKUP_INTENT;

 oparms.tcon = tcon;
 oparms.cifs_sb = cifs_sb;
 oparms.desired_access = GENERIC_WRITE;
 oparms.create_options = create_options;
 oparms.disposition = FILE_CREATE;
 oparms.path = path;
 oparms.fid = &fid;
 oparms.reconnect = 0;

 rc = CIFS_open(xid, &oparms, &oplock, ((void*)0));
 if (rc)
  return rc;

 io_parms.netfid = fid.netfid;
 io_parms.pid = current->tgid;
 io_parms.tcon = tcon;
 io_parms.offset = 0;
 io_parms.length = CIFS_MF_SYMLINK_FILE_SIZE;

 rc = CIFSSMBWrite(xid, &io_parms, pbytes_written, pbuf);
 CIFSSMBClose(xid, tcon, fid.netfid);
 return rc;
}
