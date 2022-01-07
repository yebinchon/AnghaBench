
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vol {scalar_t__ seal; scalar_t__ snapshot_time; scalar_t__ handle_timeout; scalar_t__ no_lease; int UNC; } ;
struct cifs_tcon {scalar_t__ tidStatus; scalar_t__ seal; scalar_t__ snapshot_time; scalar_t__ handle_timeout; scalar_t__ no_lease; int treeName; } ;


 scalar_t__ CifsExiting ;
 int MAX_TREE_SIZE ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static int match_tcon(struct cifs_tcon *tcon, struct smb_vol *volume_info)
{
 if (tcon->tidStatus == CifsExiting)
  return 0;
 if (strncmp(tcon->treeName, volume_info->UNC, MAX_TREE_SIZE))
  return 0;
 if (tcon->seal != volume_info->seal)
  return 0;
 if (tcon->snapshot_time != volume_info->snapshot_time)
  return 0;
 if (tcon->handle_timeout != volume_info->handle_timeout)
  return 0;
 if (tcon->no_lease != volume_info->no_lease)
  return 0;
 return 1;
}
