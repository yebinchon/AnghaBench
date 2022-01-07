
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct smb_vol {int direct_io; int strict_io; int cache_ro; int cache_rw; } ;


 int MAX_OPT_ARGS ;





 int VFS ;
 int cifs_cacheflavor_tokens ;
 int cifs_dbg (int ,char*,char*) ;
 int match_token (char*,int ,int *) ;

__attribute__((used)) static int
cifs_parse_cache_flavor(char *value, struct smb_vol *vol)
{
 substring_t args[MAX_OPT_ARGS];

 switch (match_token(value, cifs_cacheflavor_tokens, args)) {
 case 132:
  vol->direct_io = 0;
  vol->strict_io = 0;
  vol->cache_ro = 0;
  vol->cache_rw = 0;
  break;
 case 128:
  vol->direct_io = 0;
  vol->strict_io = 1;
  vol->cache_ro = 0;
  vol->cache_rw = 0;
  break;
 case 131:
  vol->direct_io = 1;
  vol->strict_io = 0;
  vol->cache_ro = 0;
  vol->cache_rw = 0;
  break;
 case 130:
  vol->direct_io = 0;
  vol->strict_io = 0;
  vol->cache_ro = 1;
  vol->cache_rw = 0;
  break;
 case 129:
  vol->direct_io = 0;
  vol->strict_io = 0;
  vol->cache_ro = 0;
  vol->cache_rw = 1;
  break;
 default:
  cifs_dbg(VFS, "bad cache= option: %s\n", value);
  return 1;
 }
 return 0;
}
