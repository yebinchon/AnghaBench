
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_fid {int volatile_fid; int persistent_fid; } ;


 int SMB2_flush (unsigned int const,struct cifs_tcon*,int ,int ) ;

__attribute__((used)) static int
smb2_flush_file(const unsigned int xid, struct cifs_tcon *tcon,
  struct cifs_fid *fid)
{
 return SMB2_flush(xid, tcon, fid->persistent_fid, fid->volatile_fid);
}
