
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_tcon {int dummy; } ;
struct cifs_fid {int netfid; } ;
struct cifsInodeInfo {int dummy; } ;
struct TYPE_2__ {int tgid; } ;


 int CIFSSMBLock (int ,struct cifs_tcon*,int ,int ,int ,int ,int ,int ,int ,int,int) ;
 scalar_t__ CIFS_CACHE_READ (struct cifsInodeInfo*) ;
 int LOCKING_ANDX_OPLOCK_RELEASE ;
 TYPE_1__* current ;

__attribute__((used)) static int
cifs_oplock_response(struct cifs_tcon *tcon, struct cifs_fid *fid,
       struct cifsInodeInfo *cinode)
{
 return CIFSSMBLock(0, tcon, fid->netfid, current->tgid, 0, 0, 0, 0,
      LOCKING_ANDX_OPLOCK_RELEASE, 0,
      CIFS_CACHE_READ(cinode) ? 1 : 0);
}
