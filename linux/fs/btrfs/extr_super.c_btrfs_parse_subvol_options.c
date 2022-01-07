
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int substring_t ;


 int BTRFS_FS_TREE_OBJECTID ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;



 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 char* match_strdup (int *) ;
 int match_token (char*,int ,int *) ;
 int match_u64 (int *,int *) ;
 int pr_warn (char*) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int btrfs_parse_subvol_options(const char *options, char **subvol_name,
  u64 *subvol_objectid)
{
 substring_t args[MAX_OPT_ARGS];
 char *opts, *orig, *p;
 int error = 0;
 u64 subvolid;

 if (!options)
  return 0;





 opts = kstrdup(options, GFP_KERNEL);
 if (!opts)
  return -ENOMEM;
 orig = opts;

 while ((p = strsep(&opts, ",")) != ((void*)0)) {
  int token;
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 130:
   kfree(*subvol_name);
   *subvol_name = match_strdup(&args[0]);
   if (!*subvol_name) {
    error = -ENOMEM;
    goto out;
   }
   break;
  case 129:
   error = match_u64(&args[0], &subvolid);
   if (error)
    goto out;


   if (subvolid == 0)
    subvolid = BTRFS_FS_TREE_OBJECTID;

   *subvol_objectid = subvolid;
   break;
  case 128:
   pr_warn("BTRFS: 'subvolrootid' mount option is deprecated and has no effect\n");
   break;
  default:
   break;
  }
 }

out:
 kfree(orig);
 return error;
}
