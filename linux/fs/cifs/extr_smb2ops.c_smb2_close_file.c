
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_fid {int volatile_fid; int persistent_fid; } ;


 int SMB2_close (unsigned int const,struct cifs_tcon*,int ,int ) ;

__attribute__((used)) static void
smb2_close_file(const unsigned int xid, struct cifs_tcon *tcon,
  struct cifs_fid *fid)
{
 SMB2_close(xid, tcon, fid->persistent_fid, fid->volatile_fid);
}
