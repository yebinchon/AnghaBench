
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cifs_tcon {int dummy; } ;


 int SMB2_close_flags (unsigned int const,struct cifs_tcon*,int ,int ,int ) ;

int
SMB2_close(const unsigned int xid, struct cifs_tcon *tcon,
    u64 persistent_fid, u64 volatile_fid)
{
 return SMB2_close_flags(xid, tcon, persistent_fid, volatile_fid, 0);
}
