
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_tcon {int dummy; } ;
struct TYPE_2__ {int netfid; } ;
struct cifsFileInfo {TYPE_1__ fid; } ;


 int CIFSSMB_set_compression (unsigned int const,struct cifs_tcon*,int ) ;

__attribute__((used)) static int
cifs_set_compression(const unsigned int xid, struct cifs_tcon *tcon,
     struct cifsFileInfo *cfile)
{
 return CIFSSMB_set_compression(xid, tcon, cfile->fid.netfid);
}
