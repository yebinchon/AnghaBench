
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct se_device {int dummy; } ;
struct iblock_dev {unsigned long ibd_udev_path; unsigned long ibd_readonly; int ibd_flags; int ibd_bd; } ;
typedef int ssize_t ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IBDF_HAS_UDEV_PATH ;
 struct iblock_dev* IBLOCK_DEV (struct se_device*) ;
 int MAX_OPT_ARGS ;



 int SE_UDEV_PATH_LEN ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int kstrtoul (char*,int ,unsigned long*) ;
 char* match_strdup (int *) ;
 int match_strlcpy (unsigned long,int *,int ) ;
 int match_token (char*,int ,int *) ;
 int pr_debug (char*,unsigned long) ;
 int pr_err (char*) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static ssize_t iblock_set_configfs_dev_params(struct se_device *dev,
  const char *page, ssize_t count)
{
 struct iblock_dev *ib_dev = IBLOCK_DEV(dev);
 char *orig, *ptr, *arg_p, *opts;
 substring_t args[MAX_OPT_ARGS];
 int ret = 0, token;
 unsigned long tmp_readonly;

 opts = kstrdup(page, GFP_KERNEL);
 if (!opts)
  return -ENOMEM;

 orig = opts;

 while ((ptr = strsep(&opts, ",\n")) != ((void*)0)) {
  if (!*ptr)
   continue;

  token = match_token(ptr, tokens, args);
  switch (token) {
  case 128:
   if (ib_dev->ibd_bd) {
    pr_err("Unable to set udev_path= while"
     " ib_dev->ibd_bd exists\n");
    ret = -EEXIST;
    goto out;
   }
   if (match_strlcpy(ib_dev->ibd_udev_path, &args[0],
    SE_UDEV_PATH_LEN) == 0) {
    ret = -EINVAL;
    break;
   }
   pr_debug("IBLOCK: Referencing UDEV path: %s\n",
     ib_dev->ibd_udev_path);
   ib_dev->ibd_flags |= IBDF_HAS_UDEV_PATH;
   break;
  case 129:
   arg_p = match_strdup(&args[0]);
   if (!arg_p) {
    ret = -ENOMEM;
    break;
   }
   ret = kstrtoul(arg_p, 0, &tmp_readonly);
   kfree(arg_p);
   if (ret < 0) {
    pr_err("kstrtoul() failed for"
      " readonly=\n");
    goto out;
   }
   ib_dev->ibd_readonly = tmp_readonly;
   pr_debug("IBLOCK: readonly: %d\n", ib_dev->ibd_readonly);
   break;
  case 130:
   break;
  default:
   break;
  }
 }

out:
 kfree(orig);
 return (!ret) ? count : ret;
}
