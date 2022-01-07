
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int substring_t ;
struct tcmu_dev {int nl_reply_supported; int dev_size; int dev_config; } ;
struct TYPE_2__ {int hw_max_sectors; int hw_block_size; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;






 int TCMU_CONFIG_LEN ;
 struct tcmu_dev* TCMU_DEV (struct se_device*) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int match_int (int *,int *) ;
 int match_strlcpy (int ,int *,int ) ;
 int match_token (char*,int ,int *) ;
 int match_u64 (int *,int *) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int) ;
 char* strsep (char**,char*) ;
 int tcmu_set_dev_attrib (int *,int *) ;
 int tcmu_set_max_blocks_param (struct tcmu_dev*,int *) ;
 int tokens ;

__attribute__((used)) static ssize_t tcmu_set_configfs_dev_params(struct se_device *dev,
  const char *page, ssize_t count)
{
 struct tcmu_dev *udev = TCMU_DEV(dev);
 char *orig, *ptr, *opts;
 substring_t args[MAX_OPT_ARGS];
 int ret = 0, token;

 opts = kstrdup(page, GFP_KERNEL);
 if (!opts)
  return -ENOMEM;

 orig = opts;

 while ((ptr = strsep(&opts, ",\n")) != ((void*)0)) {
  if (!*ptr)
   continue;

  token = match_token(ptr, tokens, args);
  switch (token) {
  case 133:
   if (match_strlcpy(udev->dev_config, &args[0],
       TCMU_CONFIG_LEN) == 0) {
    ret = -EINVAL;
    break;
   }
   pr_debug("TCMU: Referencing Path: %s\n", udev->dev_config);
   break;
  case 132:
   ret = match_u64(&args[0], &udev->dev_size);
   if (ret < 0)
    pr_err("match_u64() failed for dev_size=. Error %d.\n",
           ret);
   break;
  case 131:
   ret = tcmu_set_dev_attrib(&args[0],
     &(dev->dev_attrib.hw_block_size));
   break;
  case 130:
   ret = tcmu_set_dev_attrib(&args[0],
     &(dev->dev_attrib.hw_max_sectors));
   break;
  case 128:
   ret = match_int(&args[0], &udev->nl_reply_supported);
   if (ret < 0)
    pr_err("match_int() failed for nl_reply_supported=. Error %d.\n",
           ret);
   break;
  case 129:
   ret = tcmu_set_max_blocks_param(udev, &args[0]);
   break;
  default:
   break;
  }

  if (ret)
   break;
 }

 kfree(orig);
 return (!ret) ? count : ret;
}
