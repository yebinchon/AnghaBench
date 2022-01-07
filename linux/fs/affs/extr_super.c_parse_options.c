
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
typedef int s32 ;
typedef int kuid_t ;
typedef int kgid_t ;


 int MAX_OPT_ARGS ;
 int SF_IMMUTABLE ;
 int SF_MUFS ;
 int SF_NO_TRUNCATE ;
 int SF_PREFIX ;
 int SF_SETGID ;
 int SF_SETMODE ;
 int SF_SETUID ;
 int SF_VERBOSE ;
 int affs_set_opt (unsigned long,int ) ;
 int current_gid () ;
 int current_uid () ;
 int current_user_ns () ;
 int gid_valid (int ) ;
 int kfree (char*) ;
 int make_kgid (int ,int) ;
 int make_kuid (int ,int) ;
 int match_int (int *,int*) ;
 int match_octal (int *,int*) ;
 char* match_strdup (int *) ;
 int match_token (char*,int ,int *) ;
 int pr_warn (char*,...) ;
 int strlcpy (char*,char*,int) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int uid_valid (int ) ;

__attribute__((used)) static int
parse_options(char *options, kuid_t *uid, kgid_t *gid, int *mode, int *reserved, s32 *root,
  int *blocksize, char **prefix, char *volume, unsigned long *mount_opts)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];



 *uid = current_uid();
 *gid = current_gid();
 *reserved = 2;
 *root = -1;
 *blocksize = -1;
 volume[0] = ':';
 volume[1] = 0;
 *mount_opts = 0;
 if (!options)
  return 1;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token, n, option;
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 140:
   if (match_int(&args[0], &n))
    return 0;
   if (n != 512 && n != 1024 && n != 2048
       && n != 4096) {
    pr_warn("Invalid blocksize (512, 1024, 2048, 4096 allowed)\n");
    return 0;
   }
   *blocksize = n;
   break;
  case 138:
   if (match_octal(&args[0], &option))
    return 0;
   *mode = option & 0777;
   affs_set_opt(*mount_opts, SF_SETMODE);
   break;
  case 137:
   affs_set_opt(*mount_opts, SF_MUFS);
   break;
  case 136:
   affs_set_opt(*mount_opts, SF_NO_TRUNCATE);
   break;
  case 135:
   kfree(*prefix);
   *prefix = match_strdup(&args[0]);
   if (!*prefix)
    return 0;
   affs_set_opt(*mount_opts, SF_PREFIX);
   break;
  case 134:
   affs_set_opt(*mount_opts, SF_IMMUTABLE);
   break;
  case 133:
   if (match_int(&args[0], reserved))
    return 0;
   break;
  case 132:
   if (match_int(&args[0], root))
    return 0;
   break;
  case 131:
   if (match_int(&args[0], &option))
    return 0;
   *gid = make_kgid(current_user_ns(), option);
   if (!gid_valid(*gid))
    return 0;
   affs_set_opt(*mount_opts, SF_SETGID);
   break;
  case 130:
   if (match_int(&args[0], &option))
    return 0;
   *uid = make_kuid(current_user_ns(), option);
   if (!uid_valid(*uid))
    return 0;
   affs_set_opt(*mount_opts, SF_SETUID);
   break;
  case 129:
   affs_set_opt(*mount_opts, SF_VERBOSE);
   break;
  case 128: {
   char *vol = match_strdup(&args[0]);
   if (!vol)
    return 0;
   strlcpy(volume, vol, 32);
   kfree(vol);
   break;
  }
  case 139:

   break;
  default:
   pr_warn("Unrecognized mount option \"%s\" or missing value\n",
    p);
   return 0;
  }
 }
 return 1;
}
