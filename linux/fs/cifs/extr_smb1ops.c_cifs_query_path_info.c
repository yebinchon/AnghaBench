
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int local_nls; } ;
struct cifs_open_parms {char const* path; int reconnect; struct cifs_fid* fid; int disposition; scalar_t__ create_options; int desired_access; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_fid {int netfid; } ;
struct TYPE_5__ {int Attributes; } ;
typedef TYPE_1__ FILE_ALL_INFO ;


 int ATTR_REPARSE ;
 int CIFSSMBClose (unsigned int const,struct cifs_tcon*,int ) ;
 int CIFSSMBQPathInfo (unsigned int const,struct cifs_tcon*,char const*,TYPE_1__*,int ,int ,int ) ;
 int CIFS_open (unsigned int const,struct cifs_open_parms*,int*,int *) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int FILE_OPEN ;
 int FILE_READ_ATTRIBUTES ;
 int SMBQueryInformation (unsigned int const,struct cifs_tcon*,char const*,TYPE_1__*,int ,int ) ;
 int cifs_remap (struct cifs_sb_info*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int
cifs_query_path_info(const unsigned int xid, struct cifs_tcon *tcon,
       struct cifs_sb_info *cifs_sb, const char *full_path,
       FILE_ALL_INFO *data, bool *adjustTZ, bool *symlink)
{
 int rc;

 *symlink = 0;


 rc = CIFSSMBQPathInfo(xid, tcon, full_path, data, 0 ,
         cifs_sb->local_nls, cifs_remap(cifs_sb));





 if ((rc == -EOPNOTSUPP) || (rc == -EINVAL)) {
  rc = SMBQueryInformation(xid, tcon, full_path, data,
      cifs_sb->local_nls,
      cifs_remap(cifs_sb));
  *adjustTZ = 1;
 }

 if (!rc && (le32_to_cpu(data->Attributes) & ATTR_REPARSE)) {
  int tmprc;
  int oplock = 0;
  struct cifs_fid fid;
  struct cifs_open_parms oparms;

  oparms.tcon = tcon;
  oparms.cifs_sb = cifs_sb;
  oparms.desired_access = FILE_READ_ATTRIBUTES;
  oparms.create_options = 0;
  oparms.disposition = FILE_OPEN;
  oparms.path = full_path;
  oparms.fid = &fid;
  oparms.reconnect = 0;


  tmprc = CIFS_open(xid, &oparms, &oplock, ((void*)0));
  if (tmprc == -EOPNOTSUPP)
   *symlink = 1;
  else if (tmprc == 0)
   CIFSSMBClose(xid, tcon, fid.netfid);
 }

 return rc;
}
