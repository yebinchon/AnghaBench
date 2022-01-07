
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int netfid; } ;
struct cifsFileInfo {TYPE_1__ fid; int tlink; } ;
typedef int __u8 ;
typedef int __u64 ;
typedef scalar_t__ __u32 ;
struct TYPE_4__ {int tgid; } ;


 int CIFSSMBLock (unsigned int const,int ,int ,int ,int ,int ,int,int,int ,int,int ) ;
 TYPE_2__* current ;
 int tlink_tcon (int ) ;

__attribute__((used)) static int
cifs_mand_lock(const unsigned int xid, struct cifsFileInfo *cfile, __u64 offset,
        __u64 length, __u32 type, int lock, int unlock, bool wait)
{
 return CIFSSMBLock(xid, tlink_tcon(cfile->tlink), cfile->fid.netfid,
      current->tgid, length, offset, unlock, lock,
      (__u8)type, wait, 0);
}
