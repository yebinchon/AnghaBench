
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vol {int prepath; int iocharset; int domainname; int UNC; int password; int username; } ;


 int kfree (int ) ;
 int kzfree (int ) ;

void
cifs_cleanup_volume_info_contents(struct smb_vol *volume_info)
{
 kfree(volume_info->username);
 kzfree(volume_info->password);
 kfree(volume_info->UNC);
 kfree(volume_info->domainname);
 kfree(volume_info->iocharset);
 kfree(volume_info->prepath);
}
