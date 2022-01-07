
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vol {int * iocharset; int * local_nls; int * username; scalar_t__ nullauth; } ;


 int EINVAL ;
 int ELIBACC ;
 int FYI ;
 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 scalar_t__ cifs_parse_mount_options (char*,char const*,struct smb_vol*,int) ;
 int kfree (int *) ;
 int * load_nls (int *) ;
 int * load_nls_default () ;

int
cifs_setup_volume_info(struct smb_vol *volume_info, char *mount_data,
   const char *devname, bool is_smb3)
{
 int rc = 0;

 if (cifs_parse_mount_options(mount_data, devname, volume_info, is_smb3))
  return -EINVAL;

 if (volume_info->nullauth) {
  cifs_dbg(FYI, "Anonymous login\n");
  kfree(volume_info->username);
  volume_info->username = ((void*)0);
 } else if (volume_info->username) {

  cifs_dbg(FYI, "Username: %s\n", volume_info->username);
 } else {
  cifs_dbg(VFS, "No username specified\n");


  return -EINVAL;
 }


 if (volume_info->iocharset == ((void*)0)) {

  volume_info->local_nls = load_nls_default();
 } else {
  volume_info->local_nls = load_nls(volume_info->iocharset);
  if (volume_info->local_nls == ((void*)0)) {
   cifs_dbg(VFS, "CIFS mount error: iocharset %s not found\n",
     volume_info->iocharset);
   return -ELIBACC;
  }
 }

 return rc;
}
