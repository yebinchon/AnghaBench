
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kstatfs {int f_type; } ;
struct TYPE_4__ {int Capability; } ;
struct cifs_tcon {TYPE_1__* ses; TYPE_2__ fsUnixInfo; } ;
struct TYPE_3__ {int capabilities; } ;


 int CAP_NT_SMBS ;
 int CAP_UNIX ;
 int CIFSSMBQFSInfo (unsigned int const,struct cifs_tcon*,struct kstatfs*) ;
 int CIFSSMBQFSPosixInfo (unsigned int const,struct cifs_tcon*,struct kstatfs*) ;
 int CIFS_MAGIC_NUMBER ;
 int CIFS_POSIX_EXTENSIONS ;
 int EOPNOTSUPP ;
 int SMBOldQFSInfo (unsigned int const,struct cifs_tcon*,struct kstatfs*) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int
cifs_queryfs(const unsigned int xid, struct cifs_tcon *tcon,
      struct kstatfs *buf)
{
 int rc = -EOPNOTSUPP;

 buf->f_type = CIFS_MAGIC_NUMBER;




 if ((tcon->ses->capabilities & CAP_UNIX) &&
     (CIFS_POSIX_EXTENSIONS & le64_to_cpu(tcon->fsUnixInfo.Capability)))
  rc = CIFSSMBQFSPosixInfo(xid, tcon, buf);





 if (rc && (tcon->ses->capabilities & CAP_NT_SMBS))
  rc = CIFSSMBQFSInfo(xid, tcon, buf);






 if (rc)
  rc = SMBOldQFSInfo(xid, tcon, buf);
 return rc;
}
