
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct btrfs_device {int dummy; } ;
typedef int fmode_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct btrfs_device*) ;
 int MAX_OPT_ARGS ;
 int Opt_device ;
 int PTR_ERR (struct btrfs_device*) ;
 struct btrfs_device* btrfs_scan_one_device (char*,int ,void*) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int lockdep_assert_held (int *) ;
 char* match_strdup (int *) ;
 int match_token (char*,int ,int *) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int uuid_mutex ;

__attribute__((used)) static int btrfs_parse_device_options(const char *options, fmode_t flags,
          void *holder)
{
 substring_t args[MAX_OPT_ARGS];
 char *device_name, *opts, *orig, *p;
 struct btrfs_device *device = ((void*)0);
 int error = 0;

 lockdep_assert_held(&uuid_mutex);

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
  if (token == Opt_device) {
   device_name = match_strdup(&args[0]);
   if (!device_name) {
    error = -ENOMEM;
    goto out;
   }
   device = btrfs_scan_one_device(device_name, flags,
     holder);
   kfree(device_name);
   if (IS_ERR(device)) {
    error = PTR_ERR(device);
    goto out;
   }
  }
 }

out:
 kfree(orig);
 return error;
}
