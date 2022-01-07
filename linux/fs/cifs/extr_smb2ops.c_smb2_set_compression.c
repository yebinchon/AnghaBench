
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_tcon {int dummy; } ;
struct TYPE_2__ {int volatile_fid; int persistent_fid; } ;
struct cifsFileInfo {TYPE_1__ fid; } ;


 int SMB2_set_compression (unsigned int const,struct cifs_tcon*,int ,int ) ;

__attribute__((used)) static int
smb2_set_compression(const unsigned int xid, struct cifs_tcon *tcon,
     struct cifsFileInfo *cfile)
{
 return SMB2_set_compression(xid, tcon, cfile->fid.persistent_fid,
       cfile->fid.volatile_fid);
}
