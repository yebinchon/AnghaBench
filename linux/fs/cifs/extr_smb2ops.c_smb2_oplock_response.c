
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cifs_tcon {TYPE_2__* ses; } ;
struct cifs_fid {int volatile_fid; int persistent_fid; } ;
struct cifsInodeInfo {int lease_key; } ;
struct TYPE_4__ {TYPE_1__* server; } ;
struct TYPE_3__ {int capabilities; } ;


 scalar_t__ CIFS_CACHE_READ (struct cifsInodeInfo*) ;
 int SMB2_GLOBAL_CAP_LEASING ;
 int SMB2_lease_break (int ,struct cifs_tcon*,int ,int ) ;
 int SMB2_oplock_break (int ,struct cifs_tcon*,int ,int ,int) ;
 int smb2_get_lease_state (struct cifsInodeInfo*) ;

__attribute__((used)) static int
smb2_oplock_response(struct cifs_tcon *tcon, struct cifs_fid *fid,
       struct cifsInodeInfo *cinode)
{
 if (tcon->ses->server->capabilities & SMB2_GLOBAL_CAP_LEASING)
  return SMB2_lease_break(0, tcon, cinode->lease_key,
     smb2_get_lease_state(cinode));

 return SMB2_oplock_break(0, tcon, fid->persistent_fid,
     fid->volatile_fid,
     CIFS_CACHE_READ(cinode) ? 1 : 0);
}
