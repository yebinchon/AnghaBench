
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int volatile_fid; int persistent_fid; } ;
struct cifsFileInfo {TYPE_1__ fid; int tlink; } ;
typedef int __u64 ;
typedef int __u32 ;
struct TYPE_4__ {int tgid; } ;


 int SMB2_LOCKFLAG_UNLOCK ;
 int SMB2_lock (unsigned int const,int ,int ,int ,int ,int ,int ,int ,int) ;
 TYPE_2__* current ;
 int tlink_tcon (int ) ;

__attribute__((used)) static int
smb2_mand_lock(const unsigned int xid, struct cifsFileInfo *cfile, __u64 offset,
        __u64 length, __u32 type, int lock, int unlock, bool wait)
{
 if (unlock && !lock)
  type = SMB2_LOCKFLAG_UNLOCK;
 return SMB2_lock(xid, tlink_tcon(cfile->tlink),
    cfile->fid.persistent_fid, cfile->fid.volatile_fid,
    current->tgid, length, offset, type, wait);
}
