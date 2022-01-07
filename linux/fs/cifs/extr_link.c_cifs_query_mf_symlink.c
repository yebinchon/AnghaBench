
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_open_parms {unsigned char const* path; int reconnect; struct cifs_fid* fid; int disposition; int create_options; int desired_access; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_io_parms {int length; scalar_t__ offset; struct cifs_tcon* tcon; int pid; int netfid; } ;
struct cifs_fid {int netfid; } ;
struct TYPE_5__ {int tgid; } ;
struct TYPE_4__ {scalar_t__ EndOfFile; } ;
typedef TYPE_1__ FILE_ALL_INFO ;


 int CIFSSMBClose (unsigned int,struct cifs_tcon*,int ) ;
 int CIFSSMBRead (unsigned int,struct cifs_io_parms*,unsigned int*,char**,int*) ;
 int CIFS_MF_SYMLINK_FILE_SIZE ;
 int CIFS_NO_BUFFER ;
 int CIFS_open (unsigned int,struct cifs_open_parms*,int*,TYPE_1__*) ;
 int CREATE_NOT_DIR ;
 int ENOENT ;
 int FILE_OPEN ;
 int GENERIC_READ ;
 scalar_t__ cpu_to_le64 (int ) ;
 TYPE_2__* current ;

int
cifs_query_mf_symlink(unsigned int xid, struct cifs_tcon *tcon,
        struct cifs_sb_info *cifs_sb, const unsigned char *path,
        char *pbuf, unsigned int *pbytes_read)
{
 int rc;
 int oplock = 0;
 struct cifs_fid fid;
 struct cifs_open_parms oparms;
 struct cifs_io_parms io_parms;
 int buf_type = CIFS_NO_BUFFER;
 FILE_ALL_INFO file_info;

 oparms.tcon = tcon;
 oparms.cifs_sb = cifs_sb;
 oparms.desired_access = GENERIC_READ;
 oparms.create_options = CREATE_NOT_DIR;
 oparms.disposition = FILE_OPEN;
 oparms.path = path;
 oparms.fid = &fid;
 oparms.reconnect = 0;

 rc = CIFS_open(xid, &oparms, &oplock, &file_info);
 if (rc)
  return rc;

 if (file_info.EndOfFile != cpu_to_le64(CIFS_MF_SYMLINK_FILE_SIZE)) {
  rc = -ENOENT;

  goto out;
 }

 io_parms.netfid = fid.netfid;
 io_parms.pid = current->tgid;
 io_parms.tcon = tcon;
 io_parms.offset = 0;
 io_parms.length = CIFS_MF_SYMLINK_FILE_SIZE;

 rc = CIFSSMBRead(xid, &io_parms, pbytes_read, &pbuf, &buf_type);
out:
 CIFSSMBClose(xid, tcon, fid.netfid);
 return rc;
}
