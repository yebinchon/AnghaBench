
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct smb_vol {int * vals; int * ops; } ;


 int MAX_OPT_ARGS ;
 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_smb_version_tokens ;
 int disable_legacy_dialects ;
 int match_token (char*,int ,int *) ;
 int smb1_operations ;
 int smb1_values ;
 int smb20_operations ;
 int smb20_values ;
 int smb21_operations ;
 int smb21_values ;
 int smb302_values ;
 int smb30_operations ;
 int smb30_values ;
 int smb311_operations ;
 int smb311_values ;
 int smb3any_values ;
 int smbdefault_values ;

__attribute__((used)) static int
cifs_parse_smb_version(char *value, struct smb_vol *vol, bool is_smb3)
{
 substring_t args[MAX_OPT_ARGS];

 switch (match_token(value, cifs_smb_version_tokens, args)) {
 case 135:
  cifs_dbg(VFS, "vers=1.0 (cifs) mount not permitted when legacy dialects disabled\n");
  return 1;
 case 134:
  cifs_dbg(VFS, "vers=2.0 mount not permitted when legacy dialects disabled\n");
  return 1;

 case 133:
  vol->ops = &smb21_operations;
  vol->vals = &smb21_values;
  break;
 case 132:
  vol->ops = &smb30_operations;
  vol->vals = &smb30_values;
  break;
 case 131:
  vol->ops = &smb30_operations;
  vol->vals = &smb302_values;
  break;
 case 130:
  vol->ops = &smb311_operations;
  vol->vals = &smb311_values;
  break;
 case 129:
  vol->ops = &smb30_operations;
  vol->vals = &smb3any_values;
  break;
 case 128:
  vol->ops = &smb30_operations;
  vol->vals = &smbdefault_values;
  break;
 default:
  cifs_dbg(VFS, "Unknown vers= option specified: %s\n", value);
  return 1;
 }
 return 0;
}
