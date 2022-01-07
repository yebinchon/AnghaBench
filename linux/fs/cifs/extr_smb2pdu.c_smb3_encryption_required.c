
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cifs_tcon {int share_flags; TYPE_2__* ses; scalar_t__ seal; } ;
struct TYPE_4__ {int session_flags; TYPE_1__* server; } ;
struct TYPE_3__ {int capabilities; } ;


 int SHI1005_FLAGS_ENCRYPT_DATA ;
 int SMB2_GLOBAL_CAP_ENCRYPTION ;
 int SMB2_SESSION_FLAG_ENCRYPT_DATA ;

int smb3_encryption_required(const struct cifs_tcon *tcon)
{
 if (!tcon)
  return 0;
 if ((tcon->ses->session_flags & SMB2_SESSION_FLAG_ENCRYPT_DATA) ||
     (tcon->share_flags & SHI1005_FLAGS_ENCRYPT_DATA))
  return 1;
 if (tcon->seal &&
     (tcon->ses->server->capabilities & SMB2_GLOBAL_CAP_ENCRYPTION))
  return 1;
 return 0;
}
